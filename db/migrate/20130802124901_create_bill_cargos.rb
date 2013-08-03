class CreateBillCargos < ActiveRecord::Migration
  def change
    create_table :bill_cargos do |t|
      t.boolean :in_out
      t.integer :bill_id
      t.integer :no_in_application
      t.integer :no
      t.integer :no_in_out
      t.integer :cop_g_no
      t.integer :g_no
      t.string  :code
      t.string  :before_name
      t.string  :before_specification
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
