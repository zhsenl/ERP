# -*- encoding : utf-8 -*-
class Declaration < ActiveRecord::Base
  belongs_to :enterprise
  belongs_to :contract
  has_one :declaration_transit_imformation, :dependent => :destroy
  accepts_nested_attributes_for :declaration_transit_imformation
  
  validates :enterprise_id, :presence => true, :numericality => true
  validates :declaration_type, :presence => true
  validates :pre_entry_no, :presence => true, :uniqueness => true
  validates :operate_enterprise, :presence => true
  validates :declare_enterprise, :presence => true
  validates :declare_date, :presence => true
  validates :custom, :presence => true
  validates :load_port, :presence => true
  validates :declare_date, :presence => true
  validates :package_amount, :presence => true, :numericality => true
  validates :gross_weight, :presence => true, :numericality => true
  validates :net_weight, :presence => true, :numericality => true
end
