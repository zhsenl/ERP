class Dict::Fee < Dict::Dict
  validates :price, :numericality => true
  validates :currency_code, :presence => true
  validate :code, :presence => true
end
