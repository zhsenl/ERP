# -*- encoding : utf-8 -*-
module ApplicationsHelper
  include  FileUtils, ApplicationHelper

  def generate_application_xml(id)
    begin
      application = Application.find(id)

      action_view = ActionView::Base.new(Rails.root.join('app', 'views'))
      action_view.class_eval do
        include ApplicationHelper, ApplicationsHelper, PrintHelper
      end
      action_view.assign({:application => application})
      file = File.new(Settings["dispatch_paths"]["temp"] + "/FTP_APP_OUT_" + application.pre_entry_no + ".xml", 'w')
      file.puts(action_view.render(:template => "misc/app_out.xml.erb"))
      file.close
      FileUtils.mv file, Settings["dispatch_paths"]["upload_temp"] + "/FTP_APP_OUT_" + application.pre_entry_no + ".xml"
      app_bill_no_option = Option.find_by_name('app_bill_no')
      app_bill_no = Integer(app_bill_no_option.value)
      AppBillDispatchRecord.new({:application_id => id,
                                 :ret_type => '1',
                                 :sort_flag => '0',
                                 :chk_status => '1',
                                 :ret_no => app_bill_no,
                                 :note => '成功生成报文'}).save

      app_bill_no_option.value = app_bill_no + 1
      app_bill_no_option.save
      true
    rescue
      logger.error $!
      false
    end
  end

  def encoding_gb2312(string)
    string.force_encoding 'gb2312'
  end


end
