# -*- encoding : utf-8 -*-
class Dict::UsagesController < Dict::DictsController
  def model
    Dict::Usage    
  end
  
  def symbol    
    :dict_usage
  end
end
