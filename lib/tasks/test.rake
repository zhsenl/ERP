# -*- encoding : utf-8 -*-
require "rexml/document"
require "iconv"

include FileUtils

namespace :abc do

  desc "process the receipt"
  task :test => :environment do
    puts "process the receipt"  + Time.new.strftime(" %Y-%m-%d, %H:%M:%S")
    dir_path = Settings['dispatch_paths']['download']
    Dir.new(dir_path).each do |file_name|
      if file_name != '.' and file_name != '..'
        file = File.new(dir_path + '/' + file_name)
        doc = REXML::Document.new(file)
        message_type = REXML::XPath.first(doc, "//MessageType" ).text  rescue ''
		if message_type == 'TcsFlow201Response'
          message_id = REXML::XPath.first(doc, "//MessageId" ).text  rescue ''
          request_message_id = REXML::XPath.first(doc, "//RequestMessageId" ).text   rescue ''
          task_id = REXML::XPath.first(doc, "//TaskId" ).text    rescue ''
          note = REXML::XPath.first(doc, "//ResponseList//ResultValue" ).text rescue nil
          note = note || (REXML::XPath.first(doc, "//TcsFlow201Response//ResultValue" ).text rescue '')
          dispatch_record_generate = DispatchRecord.where("message_id = ? AND channel = ?", request_message_id, '000').last
          if dispatch_record_generate
            dispatch_record_generate.task_id = task_id
            dispatch_record_generate.save
            
          end
        elsif message_type == 'TcsFlow201'
          task_id = REXML::XPath.first(doc, "//TaskId" ).text     rescue ''
          channel = REXML::XPath.first(doc, '//Channel | //CHANNEL' ).text     rescue ''
          dispatch_record_generate = DispatchRecord.where("task_id = ? AND channel = ?", task_id, '000').last
          if dispatch_record_generate
            
            if channel == '016' or channel == '025'
			  entry_no = REXML::XPath.first(doc, "//EntryNo" ).text  rescue ''
			  puts entry_no
              declaration = Declaration.find(dispatch_record_generate.declaration_id)
			  puts (declaration and declaration.entry_no.blank?)
			  puts declaration.id
			  puts declaration.entry_no
              if declaration and declaration.entry_no.blank?
                declaration.entry_no = entry_no
                declaration.save
              end
            end
          end
        end
        file.close
      end
    end
  end
end
