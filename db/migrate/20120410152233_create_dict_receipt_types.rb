class CreateDictReceiptTypes < ActiveRecord::Migration
  def change
    create_table :dict_receipt_types do |t|

      t.timestamps
    end
  end
end
