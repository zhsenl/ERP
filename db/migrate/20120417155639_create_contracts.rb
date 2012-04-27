# -*- encoding : utf-8 -*-
class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :enterprise_id
      t.string :operate_enterprise
      t.string :foreign_enterprise
      t.string :manual
      t.string :trade_mode
      t.string :tax_kind
      t.string :export_contract
      t.string :export_currency
      t.string :export_deal_mode
      t.date :export_deadline
      t.string :import_contract
      t.string :import_currency
      t.string :import_deal_mode
      t.date :import_deadline
      t.date :type_in_date

      t.timestamps
    end
  end
end
