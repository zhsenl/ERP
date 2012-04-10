# -*- encoding : utf-8 -*-
class Dict::ProcessTypesController < Dict::DictsController
  def model
    Dict::ProcessType    
  end
  
  def symbol    
    :dict_process_type
  end
end
