class CreateDictFees < ActiveRecord::Migration
  def change
    create_table :dict_fees do |t|
      t.string  :no
      t.string  :name_cn
      t.string  :name_en
      t.decimal :price, :precision=>15, :scale=>4
      t.string  :currency_no
      t.boolean :is_income
      t.boolean :is_pay
      t.text    :note
      t.timestamps
    end
  end
end
