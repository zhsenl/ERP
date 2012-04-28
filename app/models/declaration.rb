# -*- encoding : utf-8 -*-
class Declaration < ActiveRecord::Base
  belongs_to :enterprise
  has_one :declaration_transit_imformation, :dependent => :destroy
  accepts_nested_attributes_for :declaration_transit_imformation
  
end
