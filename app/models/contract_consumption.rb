class ContractConsumption < ActiveRecord::Base
  belongs_to :contract_production
  belongs_to :contract_material
  validates :contract_production_id, :presence => true, :numericality => true
  validates :contract_material_id, :presence => true, :numericality => true
  validates :used, :presence => true, :numericality => true
  validates :wasted, :presence => true, :numericality => true
end
