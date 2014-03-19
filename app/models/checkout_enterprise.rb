class CheckoutEnterprise < ActiveRecord::Base
  has_many :finance_fees
  validates :code, :presence => true, :length => { :is => 10 }, :numericality => true
end
