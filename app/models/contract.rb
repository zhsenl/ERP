# -*- encoding : utf-8 -*-
class Contract < ActiveRecord::Base
  belongs_to :enterprise
  has_many :contract_products, :dependent => :destroy
  has_many :contract_materials, :dependent => :destroy
  validates :enterprise_id, :presence => true, :numericality => true
  validates :operate_enterprise, :presence => true
  validates :trade_mode, :presence => true
  validates :manual, :presence => true, :uniqueness => true
  validates :tax_kind, :presence => true
  validates :type_in_date, :presence => true
end
