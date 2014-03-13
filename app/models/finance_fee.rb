class FinanceFee < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :finance
  belongs_to :checkout_enterprise
end
