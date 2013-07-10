# -*- encoding : utf-8 -*-
class ContractProduct < ActiveRecord::Base
  belongs_to :contract
  has_many :contract_consumptions, :dependent => :destroy
  validates :contract_id, :presence => true, :numericality => true
  validates :code, :presence => true, :length => { :is => 10 }
  validates :name, :presence => true
  validates :unit, :presence => true
  validates :quantity, :presence => true, :numericality => true
  validates :unit_price, :presence => true, :numericality => true
  validates :trade_country, :presence => true
  validates :tax_mode, :presence => true
  validates :no, :presence => true, :numericality => true, :uniqueness => { :scope => :contract_id}
  
  def total_price
    unit_price * quantity
  end

end
