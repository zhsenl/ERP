# -*- encoding : utf-8 -*-
class Dict::BracketsController < Dict::DictsController
  def model
    Dict::Bracket    
  end
  
  def symbol    
    :dict_bracket
  end
end
