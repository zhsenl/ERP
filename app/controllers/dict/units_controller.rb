# -*- encoding : utf-8 -*-
class Dict::UnitsController < Dict::DictsController
  def model
    Dict::Unit    
  end
  
  def symbol    
    :dict_unit
  end
end
