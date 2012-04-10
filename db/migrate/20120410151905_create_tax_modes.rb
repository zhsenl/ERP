class CreateTaxModes < ActiveRecord::Migration
  def change
    create_table :tax_modes do |t|

      t.timestamps
    end
  end
end
