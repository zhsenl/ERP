# -*- encoding : utf-8 -*-
class Dict::Dict < ActiveRecord::Base
  self.abstract_class = true
  
  validates :code, :presence => true,
                   :length => {:maximum => 20},
                   :uniqueness => true
  
  default_scope :order => "code"
                   
  def self.table_name_prefix
    'dict_'
  end
end
