class ApplicationCargo < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :application

  scope :out, where(:in_out => false).order('no')
  scope :in, where(:in_out => true).order('no')

end
