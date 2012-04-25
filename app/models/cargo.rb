# -*- encoding : utf-8 -*-
class Cargo < ActiveRecord::Base
  belongs_to :enterprise
  validates :enterprise_id, :presence => true, :numericality => true
  validates :code, :presence => true, :length => { :is => 10 }
  validates :name, :presence => true
  validates :unit, :presence => true
end
