class CreateContractConsumptions < ActiveRecord::Migration
  def change
    create_table :contract_consumptions do |t|
      t.integer :contract_production_id
      t.integer :contract_material_id
      t.decimal :used
      t.decimal :wasted

      t.timestamps
    end
  end
end
