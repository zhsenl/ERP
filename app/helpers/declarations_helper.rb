# -*- encoding : utf-8 -*-
module DeclarationsHelper
  include  FileUtils
  
  def generate_declaration_xml(id)
    begin
      declaration = Declaration.find(id)
      action_view = ActionView::Base.new(Rails.root.join('app', 'views'))
      action_view.class_eval do
        include ApplicationHelper, DeclarationsHelper, PrintHelper
      end
      action_view.assign({:declaration => declaration})
      file = File.new(Settings["dispatch_paths"]["temp"] + "/" + declaration.pre_entry_no + ".xml", 'w')
      file.puts(action_view.render(:template => "misc/declaration.xml.erb"))
      file.close
      FileUtils.mv file, Settings["dispatch_paths"]["upload_temp"] + "/" + declaration.pre_entry_no + ".xml"
      true
    rescue
      #puts "error:#{$!} at:#{$@}"
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
