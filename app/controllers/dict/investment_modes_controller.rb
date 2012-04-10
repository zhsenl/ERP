# -*- encoding : utf-8 -*-
class Dict::InvestmentModesController < Dict::DictsController
  def model
    Dict::InvestmentMode    
  end
  
  def symbol    
    :dict_investment_mode
  end
end
