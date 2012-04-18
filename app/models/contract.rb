# -*- encoding : utf-8 -*-
class Contract < ActiveRecord::Base
  validates :enterprise_id, :presence => true, :numericality => true
  validates :operating_enterprise_code, :presence => true
  validates :trade_mode_code, :presence => true
  validates :manual_code, :presence => true
  validates :tax_kind_code, :presence => true
  validates :type_in_date, :presence => true
end
