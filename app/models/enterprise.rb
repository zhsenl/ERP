# -*- encoding : utf-8 -*-
class Enterprise < ActiveRecord::Base
  has_one :enterprise_customs_option, :dependent => :destroy
  accepts_nested_attributes_for :enterprise_customs_option
  validates_associated :enterprise_customs_option
  
  validates :code, :presence => true, :uniqueness => true
  validates :name, :presence => true
end
