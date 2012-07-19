# -*- encoding : utf-8 -*-
module DeclarationsHelper
  include  FileUtils
  
  def generate_declaration_xml(id)
    begin
      declaration = Declaration.find(id)
      av = ActionView::Base.new(Rails.root.join('app', 'views'))
      av.assign({:declaration => declaration})
      f = File.new(Settings["dispatch_paths"]["temp"] + "/" + declaration.pre_entry_no + ".xml", 'w')
      f.puts(av.render(:template => "misc/declaration.xml.erb"))
      f.close
      FileUtils.mv f, Settings["dispatch_paths"]["upload_temp"] + "/" + declaration.pre_entry_no + ".xml"
      true
    rescue
      false
    end    
  end
end
