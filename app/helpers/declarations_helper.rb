# -*- encoding : utf-8 -*-
module DeclarationsHelper
  include  FileUtils, ApplicationHelper
  
  def generate_declaration_xml(id)
    begin
      declaration = Declaration.find(id)
      
      serial_no = system_serial_no
      message_id = declaration.enterprise.enterprise_custom_option.platform_id.to_s + serial_no
      
      action_view = ActionView::Base.new(Rails.root.join('app', 'views'))
      action_view.class_eval do
        include ApplicationHelper, DeclarationsHelper, PrintHelper
      end
      action_view.assign({:declaration => declaration, :serial_no => serial_no})
      file = File.new(Settings["dispatch_paths"]["temp"] + "/" + declaration.pre_entry_no + ".xml", 'w')
      file.puts(action_view.render(:template => "misc/declaration.xml.erb"))
      file.close
      FileUtils.mv file, Settings["dispatch_paths"]["upload_temp"] + "/" + declaration.pre_entry_no + ".xml"
      DispatchRecord.new({:declaration_id => id, 
                          :message_id => message_id, 
                          :channel => '000', 
                          :note => '成功报文生成'}).save
      true
    rescue
      logger.error $!
      false
    end    
  end
  
  def tcs(attribute, value)
    if value.blank? 
      "<tcs:#{attribute} xsi:nil=\"true\" />"
    else
      "<tcs:#{attribute}>#{value}</tcs:#{attribute}>"
    end
  end
  
end
