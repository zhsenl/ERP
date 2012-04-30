class DeclarationCargo < ActiveRecord::Base
  belongs_to :declaration
  
  validates :declaration_id, :presence => true, :numericality => true
  validates :no_in_contract, :numericality => true
  validates :code, :presence => true, :length => { :is => 10 }
  validates :name, :presence => true
  validates :unit, :presence => true
  validates :quantity, :presence => true, :numericality => true
  validates :quantity1, :numericality => true
  validates :quantity2, :numericality => true
  validates :unit_price, :presence => true, :numericality => true
  validates :trade_country, :presence => true
  validates :tax_mode, :presence => true
  validates :no, :presence => true, :numericality => true, :uniqueness => { :scope => :declaration_id}
  
  def total_price
    unit_price * quantity
  end
end
