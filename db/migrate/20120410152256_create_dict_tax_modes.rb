class CreateDictTaxModes < ActiveRecord::Migration
  def change
    create_table :dict_tax_modes do |t|

      t.timestamps
    end
  end
end
