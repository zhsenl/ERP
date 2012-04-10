class CreateDictTaxKinds < ActiveRecord::Migration
  def change
    create_table :dict_tax_kinds do |t|

      t.timestamps
    end
  end
end
