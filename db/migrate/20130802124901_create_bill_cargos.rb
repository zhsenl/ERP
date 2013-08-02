class CreateBillCargos < ActiveRecord::Migration
  def change
    create_table :bill_cargos do |t|
	  t.integer :declaration_id
      t.integer :no_in_contract
	  t.integer :no
	  t.integer :in_out_no
      t.string  :code
      t.string  :name
      t.string  :specification
      t.decimal :quantity, :precision => 15, :scale => 4
      t.string  :unit
      t.decimal :quantity1, :precision => 15, :scale => 4
      t.string  :unit1
	  t.string  :note
	  t.string  :bak_code_ts
	  t.integer :modify_mark

      t.timestamps
    end
  end
end
