class Bill < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :application
  belongs_to :enterprise
  belongs_to :in_enterprise, class_name: "Enterprise"
  has_many :bill_cargos, :dependent => :destroy
  has_many :app_bill_dispatch_records, :dependent => :destroy

  validates :pre_entry_no, :presence => true, :uniqueness => true
  validates :application_id, :presence => true, :numericality => true
  validates :cop_bill_no, :presence => true
  validates :trade_code, :presence => true
  validates :issue_date, :presence => true
  validates :agent_code, :presence => true
  validates :is_decla_date, :presence => true
  validates :is_decla_em, :presence => true
  validates :in_trade_code, :presence => true

  with_options if: :in_bill? do |in_bill|
    #in_bill.validates :app_no, :presence => true
    in_bill.validates :in_cop_bill_no, :presence => true
    in_bill.validates :in_issue_date, :presence => true
    in_bill.validates :in_agent_code, :presence => true
    in_bill.validates :in_is_decla_date, :presence => true
    in_bill.validates :in_is_decla_em, :presence => true
  end


  def in_bill?
    self.seq_no != ''
  end
  
end
