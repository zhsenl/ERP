# -*- encoding : utf-8 -*-
class EnterpriseCustomOption < ActiveRecord::Base
  belongs_to :enterprise
  validates :enterprise_id, :presence => true, :uniqueness => true
  validates :custom_code, :presence => true
  validates :proxy_unit_price, :numericality => true
  validates :service_unit_price, :numericality => true
end
