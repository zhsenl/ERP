class Bill < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :application
  belongs_to :enterprise
  belongs_to :in_enterprise, class_name: "Enterprise"
  has_many :bill_cargos, :dependent => :destroy

  validates :pre_entry_no, :presence => true, :uniqueness => true
  validates :application_id, :presence => true, :numericality => true
  validates :cop_bill_no, :presence => true
  validates :trade_code, :presence => true
  validates :issue_date, :presence => true
  validates :agent_code, :presence => true
  validates :is_decla_date, :presence => true
  validates :is_decla_em, :presence => true
  validates :in_trade_code, :presence => true
end
