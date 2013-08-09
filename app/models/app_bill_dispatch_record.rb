class AppBillDispatchRecord < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :application

  validates :application_id, :presence => true, :numericality => true
end
