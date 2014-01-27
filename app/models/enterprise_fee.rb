class EnterpriseFee < ActiveRecord::Base
  validates :code, :presence => true
  validates :load_port, :presence => true
end
