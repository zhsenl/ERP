# -*- encoding : utf-8 -*-
class ContractConsumption < ActiveRecord::Base
  belongs_to :contract_product
  belongs_to :contract_material
  validates :contract_product_id, :presence => true, :numericality => true
  validates :contract_material_id, :presence => true, :numericality => true
  validates :used, :presence => true, :numericality => true
  validates :wasted, :presence => true, :numericality => true
end
