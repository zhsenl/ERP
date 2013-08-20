# -*- encoding : utf-8 -*-
require "rexml/document"

module ApplicationsHelper
  include  FileUtils, ApplicationHelper

  def generate_application_xml(id, sort_flag)
    begin
      application = Application.find(id)
      action_view = ActionView::Base.new(Rails.root.join('app', 'views'))
      action_view.class_eval do
        include ApplicationHelper, ApplicationsHelper, PrintHelper
      end
      action_view.assign({:application => application})
      if sort_flag == '0'
        @xml_content = action_view.render(:template => "misc/app_out_without_sign.xml")
      else
        @xml_content = action_view.render(:template => "misc/app_in_without_sign.xml")
      end
      true
    rescue
      logger.error $!
      false
    end
  end

  def sign_application_xml(id, sort_flag, signed_data, card_id, cert_no)
    begin
      application = Application.find(id)
      if sort_flag == '0'
        temp = Settings["app_bill_dispatch_paths"]["temp"] + "/FTP_APP_OUT_" + application.pre_entry_no + ".xml"
        upload_temp = Settings["app_bill_dispatch_paths"]["upload_temp"] + "/FTP_APP_OUT_" + application.pre_entry_no + ".xml"
        template = "misc/app_out.xml.erb"
      else
        temp = Settings["app_bill_dispatch_paths"]["temp"] + "/FTP_APP_IN_" + application.pre_entry_no + ".xml"
        upload_temp = Settings["app_bill_dispatch_paths"]["upload_temp"] + "/FTP_APP_IN_" + application.pre_entry_no + ".xml"
        template = "misc/app_in.xml.erb"
      end
      action_view = ActionView::Base.new(Rails.root.join('app', 'views'))
      action_view.class_eval do
        include ApplicationHelper, ApplicationsHelper, PrintHelper
      end
      action_view.assign({:application => application, :signed_data => signed_data, :card_id => card_id, :cert_no => cert_no })
      file = File.new(temp, 'w')
      @xml_content = action_view.render(:template => template)
      file.puts(@xml_content)
      file.close
      FileUtils.mv file, upload_temp
      app_bill_no_option = Option.find_by_name('app_bill_no')
      app_bill_no = Integer(app_bill_no_option.value)
      AppBillDispatchRecord.new({:application_id => id,
                                 :ret_type => '1',
                                 :sort_flag => sort_flag,
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
