# -*- encoding : utf-8 -*-
class DeclarationContainer < ActiveRecord::Base
  belongs_to :declaration
  
  validates :declaration_id, :presence => true, :numericality => true
  validates :code, :presence => true
  validates :container, :presence => true
end
