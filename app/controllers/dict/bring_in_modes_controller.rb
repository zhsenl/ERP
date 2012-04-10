# -*- encoding : utf-8 -*-
class Dict::BringInModesController < Dict::DictsController
  def model
    Dict::BringInMode    
  end
  
  def symbol    
    :dict_bring_in_mode
  end
end
