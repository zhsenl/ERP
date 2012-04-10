# -*- encoding : utf-8 -*-
class Dict::DistrictsController < Dict::DictsController
  def model
    Dict::District    
  end
  
  def symbol    
    :dict_district
  end
end
