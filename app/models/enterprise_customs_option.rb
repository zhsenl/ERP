# -*- encoding : utf-8 -*-
class EnterpriseCustomsOption < ActiveRecord::Base
  belongs_to :enterprise
  validates :customs_code, :presence => true
  validates :proxy_unit_price, :numericality => true
  validates :service_unit_price, :numericality => true
end
