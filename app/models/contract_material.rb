# -*- encoding : utf-8 -*-
class ContractMaterial < ActiveRecord::Base
  belongs_to :contract
  validates :contract_id, :presence => true, :numericality => true
  validates :code, :presence => true
  validates :plus_code, :presence => true
  validates :name, :presence => true
  validates :unit, :presence => true
  validates :quantity, :presence => true, :numericality => true
  validates :unit_price, :presence => true, :numericality => true
  validates :country, :presence => true
  validates :tax_mode, :presence => true
  validates :no, :presence => true, :numericality => true
  
  def total_price
    unit_price * quantity
  end
end
