class CreateFinanceFees < ActiveRecord::Migration
  def change
    create_table :finance_fees do |t|
      t.integer :finance_id
      t.integer :code
      t.integer :load_port
      t.string  :name
      t.string :name_en
      t.decimal  :price, :precision=>15, :scale=>4
      t.string  :currency_code
      t.boolean :is_income
      t.boolean :is_pay
      t.text :note
      t.timestamps
    end
  end
end
