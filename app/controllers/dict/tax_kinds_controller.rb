# -*- encoding : utf-8 -*-
class Dict::TaxKindsController < Dict::DictsController
  def model
    Dict::TaxKind    
  end
  
  def symbol    
    :dict_tax_kind
  end
end
