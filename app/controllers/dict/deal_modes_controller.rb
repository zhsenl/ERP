# -*- encoding : utf-8 -*-
class Dict::DealModesController < Dict::DictsController
  def model
    Dict::DealMode    
  end
  
  def symbol    
    :dict_deal_mode
  end
end
