class Finance < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :declaration
  has_many :checkout_enterprises
  has_many :finance_fees
end
