class CheckMethod < ActiveRecord::Base
  attr_accessible :currency, :from, :method, :price, :to
  validates :method, :presence => true
  validates :price, :presence => true, :numericality => true

end
