# -*- encoding : utf-8 -*-
class Dict::PortsController < Dict::DictsController
  def model
    Dict::Port 
  end
  
  def symbol    
    :dict_port
  end
end
