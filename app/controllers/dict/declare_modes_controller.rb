# -*- encoding : utf-8 -*-
class Dict::DeclareModesController < Dict::DictsController
  def model
    Dict::DeclareMode    
  end
  
  def symbol    
    :dict_declare_mode
  end
end
