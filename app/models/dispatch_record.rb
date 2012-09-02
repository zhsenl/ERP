class DispatchRecord < ActiveRecord::Base
  belongs_to :declaration
  
  validates :declaration_id, :presence => true, :numericality => true
end
