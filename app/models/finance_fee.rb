class FinanceFee < ActiveRecord::Base
  # attr_accessible :title, :body
  validates :price, :numericality => true
  validates :currency_code, :presence => true
  validate :code, :presence => true
  belongs_to :finance
  belongs_to :checkout_enterprise
end
