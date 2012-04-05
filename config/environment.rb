# -*- encoding : utf-8 -*-
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ERP::Application.initialize!

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if !html_tag.start_with? "<label"
    if instance.error_message.kind_of?(Array)
      %(#{html_tag}<span class="input-notification error png_bg">#{instance.error_message.join(',')}</span>).html_safe
    else
      %(#{html_tag}<span class="input-notification error png_bg">#{instance.error_message}</span>).html_safe
    end
  else
    html_tag
  end
  
end
