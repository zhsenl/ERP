# -*- encoding : utf-8 -*-
class Dict::CustomsController < Dict::DictsController
  def model
    Dict::Custom    
  end
  
  def symbol    
    :dict_custom
  end
end
