# -*- encoding : utf-8 -*-
class Dict::CountriesController < Dict::DictsController
  def model
    Dict::Country    
  end
  
  def symbol    
    :dict_country
  end
end
