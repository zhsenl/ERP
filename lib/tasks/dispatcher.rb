# -*- encoding : utf-8 -*-
require "net/ftp"
require 'fileutils'
require 'yaml'

Settings = YAML.load_file(File.expand_path('../../../config/settings.yml', __FILE__))

#发送报文
Dir.new(Settings['dispatch_paths']['upload_temp']).each do |file_name|
  if file_name != '.' and file_name != '..'
    message_file = File.new(Settings['dispatch_paths']['upload_temp'] + '/' + file_name)
    begin
      Net::FTP.open(Settings['ftp_info']['host'], Settings['ftp_info']['username'], Settings['ftp_info']['password']) do |ftp|
        ftp.chdir('TCS/UploadTemp')
        ftp.puttextfile(message_file.path) 
        ftp.rename(file_name, '../Upload/' + file_name)           
      end
      message_file.close
      FileUtils.mv message_file, Settings["dispatch_paths"]["upload"] + "/" + File.basename(message_file)
    rescue
      message_file.close
      File.open(Rails.root.join('log', "ftp.log"), 'a') do |file|
        file.puts "time: #{Time.now} error:#{$!} at:#{$@}"
      end
    end        
  end
end

#接收报文
Net::FTP.open(Settings['ftp_info']['host'], Settings['ftp_info']['username'], Settings['ftp_info']['password']) do |ftp|
  ftp.nlst('TCS/Download').each do |file|
  	temp_file = Settings['dispatch_paths']['download_temp'] + '/' + File.basename(file)
    ftp.gettextfile(file, temp_file)
    FileUtils.mv temp_file, Settings["dispatch_paths"]["download"] + "/" + File.basename(file)
    ftp.delete(file)
  end             
end