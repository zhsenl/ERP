# -*- encoding : utf-8 -*-
class Dict::TransportModesController < Dict::DictsController
  def model
    Dict::TransportMode   
  end
  
  def symbol    
    :dict_transport_mode
  end
end
