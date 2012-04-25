class RemovePlusCodeFromContractProducts < ActiveRecord::Migration
  def up
    remove_column :contract_products, :plus_code
      end

  def down
    add_column :contract_products, :plus_code, :string
  end
end
