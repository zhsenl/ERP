# -*- encoding : utf-8 -*-
class Dict::GoodsController < Dict::DictsController
  def model
    Dict::Good    
  end
  
  def symbol    
    :dict_good
  end
end
