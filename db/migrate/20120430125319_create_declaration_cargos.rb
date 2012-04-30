class CreateDeclarationCargos < ActiveRecord::Migration
  def change
    create_table :declaration_cargos do |t|
      t.integer :declaration_id
      t.integer :no_in_contract
      t.string :code
      t.string :name
      t.string :specification
      t.decimal :quantity, :precision => 15, :scale => 4
      t.string :unit
      t.decimal :quantity1, :precision => 15, :scale => 4
      t.string :unit1
      t.decimal :quantity2, :precision => 15, :scale => 4
      t.string :unit2
      t.string :trade_country
      t.decimal :unit_price, :precision => 15, :scale => 4
      t.string :currency
      t.string :tax_mode
      t.string :goods_version
      t.integer :no

      t.timestamps
    end
  end
end
