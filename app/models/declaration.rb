# -*- encoding : utf-8 -*-
class Declaration < ActiveRecord::Base
  belongs_to :enterprise
  belongs_to :contract
  has_one :declaration_transit_information, :dependent => :destroy
  has_many :declaration_cargos, :dependent => :destroy
  has_many :declaration_containers, :dependent => :destroy
  has_many :declaration_packings, :dependent => :destroy
  has_many :dispatch_records, :dependent => :destroy
  accepts_nested_attributes_for :declaration_transit_information
  
  scope :export, where(:declaration_type => "export")
  scope :import, where(:declaration_type => "import")
  
  validates :enterprise_id, :presence => true, :numericality => true
  validates :declaration_type, :presence => true
  validates :pre_entry_no, :presence => true, :uniqueness => true
  validates :operate_enterprise_code, :presence => true
  validates :declare_enterprise_code, :presence => true
  validates :declare_date, :presence => true
  validates :custom, :presence => true
  validates :load_port, :presence => true
  validates :declare_date, :presence => true
  validates :package_amount, :presence => true, :numericality => true
  validates :gross_weight, :presence => true, :numericality => true
  validates :net_weight, :presence => true, :numericality => true
  validates :transit_type, :presence => true
  
  def attachments=(attachment_hash)
    self.attachments_mark = attachment_hash.select{|key, val| !val.blank?}.to_json
  end
  
  def attachments
    if self.attachments_mark.blank?
      Hash.new
    else
      ActiveSupport::JSON.decode(self.attachments_mark)
    end    
  end
  
  def operate_enterprise=(enterprise)
    operate_enterprise_code = enterprise.code
  end
  
  def operate_enterprise
    Enterprise.find_by_code(operate_enterprise_code)
  end
  
  def declare_enterprise=(enterprise)
    declare_enterprise_code = enterprise.code
  end
  
  def declare_enterprise
    Enterprise.find_by_code(declare_enterprise_code)
  end
  
end
