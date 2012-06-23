class Dict::TransitTypesController < Dict::DictsController
  def model
    Dict::TransitType  
  end
  
  def symbol    
    :dict_transit_type
  end
end
