# -*- encoding : utf-8 -*-
class ForeignEnterprise < ActiveRecord::Base
  validates :code, :presence => true, :uniqueness => true
  validates :name, :presence => true
end
