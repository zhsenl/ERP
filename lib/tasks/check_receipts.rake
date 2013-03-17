# -*- encoding : utf-8 -*-
require "rexml/document"

include FileUtils

namespace :receipt do

  desc "process the receipt"
  task :check_receipts => :environment do
    dir_path = Settings['dispatch_paths']['download_temp']
    Dir.new(dir_path).each do |file_name|
      if file_name != '.' and file_name != '..'
        file = File.new(dir_path + '/' + file_name)
        doc = REXML::Document.new(file)
        message_type = REXML::XPath.first(doc, "//MessageType" ).text
        if message_type == 'TcsFlow201Response'
          message_id = REXML::XPath.first(doc, "//MessageId" ).text
          request_message_id = REXML::XPath.first(doc, "//RequestMessageId" ).text
          task_id = REXML::XPath.first(doc, "//TaskId" ).text
          note = REXML::XPath.first(doc, "//ResponseList//ResultValue" ).text
          dispatch_record_generate = DispatchRecord.where("message_id = ? AND channel = ?", request_message_id, '000').first
          if dispatch_record_generate
            dispatch_record_generate.task_id = task_id
            dispatch_record_generate.save
            dispatch_record_new = DispatchRecord.new({:declaration_id => dispatch_record_generate.declaration_id,
              :message_id => message_id,
              :task_id => task_id,
              :note => note})
          dispatch_record_new.save
          end
        elsif message_type == 'TcsFlow201'
          message_id = REXML::XPath.first(doc, "//MessageId" ).text
          task_id = REXML::XPath.first(doc, "//TaskId" ).text
          channel = REXML::XPath.first(doc, '//Channel | //CHANNEL' ).text
          note = REXML::XPath.first(doc, "//Note | //NOTE" ).text.to_s rescue ''
          note += (REXML::XPath.first(doc, "//ResultInformation" ).text.to_s rescue '')
          dispatch_record_generate = DispatchRecord.where("task_id = ? AND channel = ?", task_id, '000').first
          if dispatch_record_generate
            dispatch_record_new = DispatchRecord.new({:declaration_id => dispatch_record_generate.declaration_id,
              :message_id => message_id,
              :channel => channel,
              :task_id => task_id,
              :note => note})
            dispatch_record_new.save
            if channel == '016' or channel == '025'
              eport_no = REXML::XPath.first(doc, "//EportNo" ).text
              entry_no = REXML::XPath.first(doc, "//EntryNo" ).text
              declaration = Declaration.find(dispatch_record_generate.declaration_id)
              if declaration
              declaration.eport_no = eport_no
              declaration.entry_no = entry_no
              declaration.is_finish = true
              declaration.save
              Message.new({:subject => '报关单申报成功', :body => '报关单<a href="' + Settings['ERP_path'] + '/declarations/' + declaration.id.to_s + '" >' + declaration.pre_entry_no + '</a>申报成功！'}
                          ).send_message(:system, declaration.created_by)
              end
              
            end
          end

        end
        file.close
        FileUtils.mv file, Settings["dispatch_paths"]["download"] + "/" + File.basename(file)

      end

    end
  end

end