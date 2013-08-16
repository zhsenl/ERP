class AppBillDispatchRecord < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :application
  belongs_to :bill

  #validates :application_id, :presence => true, :numericality => true

  scope :out, where(:sort_flag => '0')
  scope :in, where(:sort_flag => '1')

end
