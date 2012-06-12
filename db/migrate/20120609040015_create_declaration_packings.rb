class CreateDeclarationPackings < ActiveRecord::Migration
  def change
    create_table :declaration_packings do |t|
      t.integer :declaration_id
      t.string :name
      t.integer :package_amount
      t.decimal :quantity
      t.string :unit
      t.decimal :gross_weight
      t.decimal :net_weight
      t.decimal :gross_weight_per_package
      t.decimal :net_weight_per_package
      t.integer :no

      t.timestamps
    end
  end
end
