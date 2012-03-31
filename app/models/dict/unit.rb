class Dict::Unit < ActiveRecord::Base
  validates :code, :presence => true,
                   :length => {:maximum => 20},
                   :uniqueness => true
end
