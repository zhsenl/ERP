# -*- encoding : utf-8 -*-
class Dict::WrapTypesController < Dict::DictsController
  def model
    Dict::WrapType    
  end
  
  def symbol    
    :dict_wrap_type
  end
end
