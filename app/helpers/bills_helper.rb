# -*- encoding : utf-8 -*-
require "rexml/document"
module BillsHelper
  include  FileUtils, ApplicationHelper

  def generate_bill_xml(id, sort_flag, ret_type)
    begin
      bill = Bill.find(id)
      action_view = ActionView::Base.new(Rails.root.join('app', 'views'))
      action_view.class_eval do
        include ApplicationHelper, BillsHelper, PrintHelper
      end
      action_view.assign({:bill => bill})
      if ret_type == '0'
        if sort_flag == '0'
          @xml_content = action_view.render(:template => "misc/bill_out_without_sign.xml")
        else
          @xml_content = action_view.render(:template => "misc/bill_in_without_sign.xml")
        end
      else
        if sort_flag == '0'
          @xml_content = action_view.render(:template => "misc/bill_return_out_without_sign.xml")
        else
          @xml_content = action_view.render(:template => "misc/bill_return_in_without_sign.xml")
        end
      end
      true
    rescue
      logger.error $!
      false
    end
  end

  def sign_bill_xml(id, sort_flag, signed_data, ret_type)
    begin
      bill = Bill.find(id)
      if ret_type == '0'
        if sort_flag == '0'
          temp = Settings["app_bill_dispatch_paths"]["temp"] + "/FTP_BILL_OUT_" + bill.pre_entry_no + ".xml"
          upload_temp = Settings["app_bill_dispatch_paths"]["upload_temp"] + "/FTP_BILL_OUT_" + bill.pre_entry_no + ".xml"
          template = "misc/bill_out.xml.erb"
        else
          temp = Settings["app_bill_dispatch_paths"]["temp"] + "/FTP_BILL_IN_" + bill.pre_entry_no + ".xml"
          upload_temp = Settings["app_bill_dispatch_paths"]["upload_temp"] + "/FTP_BILL_IN_" + bill.pre_entry_no + ".xml"
          template = "misc/bill_in.xml.erb"
        end
      else
        if sort_flag == '0'
          temp = Settings["app_bill_dispatch_paths"]["temp"] + "/FTP_RETURN_BILL_OUT_" + bill.pre_entry_no + ".xml"
          upload_temp = Settings["app_bill_dispatch_paths"]["upload_temp"] + "/FTP_RETURN_BILL_OUT_" + bill.pre_entry_no + ".xml"
          template = "misc/bill_return_out.xml.erb"
        else
          temp = Settings["app_bill_dispatch_paths"]["temp"] + "/FTP_RETURN_BILL_IN_" + bill.pre_entry_no + ".xml"
          upload_temp = Settings["app_bill_dispatch_paths"]["upload_temp"] + "/FTP_RETURN_BILL_IN_" + bill.pre_entry_no + ".xml"
          template = "misc/bill_return_in.xml.erb"
        end
      end
      action_view = ActionView::Base.new(Rails.root.join('app', 'views'))
      action_view.class_eval do
        include ApplicationHelper, BillsHelper, PrintHelper
      end
      action_view.assign({:bill => bill, :signed_data => signed_data})
      file = File.new(temp, 'w')
      @xml_content = action_view.render(:template => template)
      file.puts(@xml_content)
      file.close
      FileUtils.mv file, upload_temp
      app_bill_no_option = Option.find_by_name('app_bill_no')
      app_bill_no = Integer(app_bill_no_option.value)
      AppBillDispatchRecord.new({:bill_id => id,
                                 :ret_type => ret_type,
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

