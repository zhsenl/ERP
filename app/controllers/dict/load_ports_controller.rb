# -*- encoding : utf-8 -*-
class Dict::LoadPortsController < Dict::DictsController
  def model
    Dict::LoadPort    
  end
  
  def symbol    
    :dict_load_port
  end
end
