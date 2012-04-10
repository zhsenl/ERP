# -*- encoding : utf-8 -*-
class Dict::CurrenciesController < Dict::DictsController
  def model
    Dict::Currency    
  end
  
  def symbol    
    :dict_currency
  end
end
