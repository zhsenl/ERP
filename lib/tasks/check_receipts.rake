require "rexml/document"

include REXML, FileUtils

namespace :receipt do

  desc "process the receipt"
  task :check_receipts => :environment do
    dir_path = Settings['dispatch_paths']['download_temp']
    Dir.new(dir_path).each do |file_name|
      if file_name != '.' and file_name != '..'
        file = File.new(dir_path + '/' + file_name)
        doc = Document.new(file)
        message_type = XPath.first(doc, "//MessageType" ).text
        if message_type == 'TcsFlow201Response'
          message_id = XPath.first(doc, "//MessageId" ).text
          request_message_id = XPath.first(doc, "//RequestMessageId" ).text
          task_id = XPath.first(doc, "//TaskId" ).text
          note = XPath.first(doc, "//ResponseList//ResultValue" ).text
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
          message_id = XPath.first(doc, "//MessageId" ).text
          task_id = XPath.first(doc, "//TaskId" ).text
          channel = XPath.first(doc, "//Channel" ).text
          note = XPath.first(doc, "//note" ).text
          if channel == '001'
            note = XPath.first(doc, "//ResponseList//ResultInformation" ).text
          end
          dispatch_record_generate = DispatchRecord.where("task_id = ? AND channel = ?", task_id, '000').first
          if dispatch_record_generate
            dispatch_record_new = DispatchRecord.new({:declaration_id => dispatch_record_generate.declaration_id,
              :message_id => message_id,
              :channel => channel,
              :task_id => task_id,
              :note => note})
            dispatch_record_new.save
            if channel == '016'
              eport_no = XPath.first(doc, "//EportNo" ).text
              entry_no = XPath.first(doc, "//EntryNo" ).text
              declaration = Declaration.find(dispatch_record_generate.declaration_id)
              if declaration
              declaration.eport_no = eport_no
              declaration.entry_no = entry_no
              declaration.is_finish = true
              declaration.save
              end
            end
          end

        end
        FileUtils.mv file, Settings["dispatch_paths"]["upload_temp"] + "/" + File.basename(file)

      end

    end
  end

end