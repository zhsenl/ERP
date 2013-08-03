class ApplicationCargo < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :application

  validates :application_id, :presence => true, :numericality => true
  validates :no_in_contract, :numericality => true
  validates :code, :presence => true, :length => { :is => 10 }
  validates :name, :presence => true
  validates :unit, :presence => true
  validates :unit1, :presence => true
  validates :quantity, :presence => true, :numericality => true
  validates :quantity1, :numericality => true
  validates :no, :presence => true, :numericality => true

  scope :out, where(:in_out => false).order('no')
  scope :in, where(:in_out => true).order('no')

end
