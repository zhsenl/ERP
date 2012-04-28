# -*- encoding : utf-8 -*-
class Option < ActiveRecord::Base
  validates :name, :presence => true
end
