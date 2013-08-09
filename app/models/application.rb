class Application < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :enterprise
  belongs_to :in_enterprise, class_name: "Enterprise"
  belongs_to :contract
  belongs_to :in_contract, class_name: "Contract"
  has_many :application_cargos, :dependent => :destroy
  has_many :app_bill_dispatch_records, :dependent => :destroy

  validates :pre_entry_no, :presence => true, :uniqueness => true
  validates :enterprise_id, :presence => true, :numericality => true
  validates :contract_id, :presence => true
  validates :cop_app_no, :presence => true
  validates :mast_cust, :presence => true
  validates :trade_code, :presence => true
  validates :agent_code, :presence => true
  validates :dict_code, :presence => true
  validates :lice_no, :presence => true
  validates :d_date, :presence => true
  validates :in_trade_code, :presence => true

end
