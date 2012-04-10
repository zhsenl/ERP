# -*- encoding : utf-8 -*-
class Dict::TrucksController < Dict::DictsController
  def model
    Dict::Truck    
  end
  
  def symbol    
    :dict_truck
  end
end
