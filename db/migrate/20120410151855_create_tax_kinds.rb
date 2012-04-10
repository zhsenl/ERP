class CreateTaxKinds < ActiveRecord::Migration
  def change
    create_table :tax_kinds do |t|

      t.timestamps
    end
  end
end
