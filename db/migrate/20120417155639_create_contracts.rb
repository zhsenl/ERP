# -*- encoding : utf-8 -*-
class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :enterprise_id
      t.string :operating_enterprise_code
      t.string :foreign_enterprise_code
      t.string :manual_code
      t.string :trade_mode_code
      t.string :tax_kind_code
      t.string :export_contract_code
      t.string :export_currency_code
      t.string :export_deal_mode_code
      t.datetime :export_deadline
      t.string :import_contract_code
      t.string :import_currency_code
      t.string :import_deal_mode_code
      t.datetime :import_deadline
      t.datetime :type_in_date

      t.timestamps
    end
  end
end
