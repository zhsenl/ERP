# -*- encoding : utf-8 -*-
class Dict::PayWaysController < Dict::DictsController
  def model
    Dict::PayWay   
  end
  
  def symbol    
    :dict_pay_way
  end
end
