# -*- encoding : utf-8 -*-
class Dict::MetalCabinetsController < Dict::DictsController
  def model
    Dict::MetalCabinet    
  end
  
  def symbol    
    :dict_metal_cabinet
  end
end
