# -*- encoding : utf-8 -*-
module PrintHelper
  
  def dict_name(klass, code)
    dict = klass.find_by_code(code)
    "#{dict.name}" if dict
  end
  
  def dict_name_and_code(klass, code)
    dict = klass.find_by_code(code)
    "#{dict.name}(#{dict.code})" if dict
  end
  
  def enterprise_name_and_trade_code(obj)
    if obj.class.to_s == "String"
      enterprise = Enterprise.find_by_code(obj)
    else
      enterprise = Enterprise.find_by_id(obj)
    end    
    "#{enterprise.name}(#{enterprise.enterprise_custom_option.trade_code if enterprise.enterprise_custom_option})" if enterprise
  end
  
end
