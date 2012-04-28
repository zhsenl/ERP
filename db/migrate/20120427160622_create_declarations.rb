# -*- encoding : utf-8 -*-
class CreateDeclarations < ActiveRecord::Migration
  def change
    create_table :declarations do |t|
      t.integer :enterprise_id
      t.string :declaration_type
      t.string :pre_entry_no
      t.string :entry_no
      t.string :eport_no
      t.string :declarant
      t.string :declare_enterprise
      t.string :operate_enterprise
      t.string :custom
      t.string :enrol_no
      t.date :declare_date
      t.string :transport_mode
      t.string :transport_tool
      t.string :truck
      t.string :bill_no
      t.string :trade_mode
      t.string :tax_kind
      t.string :trade_country
      t.string :port
      t.string :destination
      t.string :pay_way
      t.string :certification
      t.string :deal_mode
      t.string :contract_no
      t.integer :package_amount
      t.string :wrap_type
      t.decimal :gross_weight
      t.decimal :net_weight
      t.string :load_port
      t.string :memo
      t.string :attachments_mark
      t.date :import_export_date

      t.timestamps
    end
  end
end
