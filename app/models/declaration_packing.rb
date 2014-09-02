# -*- encoding : utf-8 -*-
class DeclarationPacking < ActiveRecord::Base
  belongs_to :declaration
  
  validates :declaration_id, :presence => true, :numericality => true
  validates :name, :presence => true
  validates :package_amount, :presence => true, :numericality => true
  validates :quantity, :presence => true, :numericality => true
  validates :unit, :presence => true
  validates :net_weight, :presence => true, :numericality => true
  validates :gross_weight, :presence => true, :numericality => true
  validates_numericality_of :gross_weight, :greater_than_or_equal_to => :net_weight
  validates_numericality_of :net_weight, :less_than_or_equal_to => :gross_weight
  validates :gross_weight_per_package, :presence => true, :numericality => true
  validates :net_weight_per_package, :presence => true, :numericality => true
  validates :no, :presence => true, :numericality => true#, :uniqueness => { :scope => :declaration_id}
end
