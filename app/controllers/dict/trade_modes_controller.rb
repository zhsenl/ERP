# -*- encoding : utf-8 -*-
class Dict::TradeModesController < Dict::DictsController
  def model
    Dict::TradeMode   
  end
  
  def symbol    
    :dict_trade_mode
  end
end
