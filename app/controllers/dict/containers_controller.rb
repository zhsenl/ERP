# -*- encoding : utf-8 -*-
class Dict::ContainersController < Dict::DictsController
  def model
    Dict::Container    
  end
  
  def symbol    
    :dict_container
  end
end
