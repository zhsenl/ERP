# -*- encoding : utf-8 -*-
class CreateContractProducts < ActiveRecord::Migration
  def change
    create_table :contract_products do |t|
      t.integer :contract_id 
      t.string :code
      t.string :plus_code
      t.string :name
      t.string :specification
      t.string :unit
      t.string :unit1
      t.string :unit2
      t.decimal :quantity, :precision => 15, :scale => 4
      t.decimal :unit_price, :precision => 15, :scale => 4
      t.string :trade_country
      t.string :tax_mode
      t.string :no

      t.timestamps
    end
  end
end
