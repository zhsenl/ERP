# -*- encoding : utf-8 -*-
class Dict::TaxModesController < Dict::DictsController
  def model
    Dict::TaxMode    
  end
  
  def symbol    
    :dict_tax_mode
  end
end
