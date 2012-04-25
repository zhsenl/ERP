class RemovePlusCodeFromContractProductions < ActiveRecord::Migration
  def up
    remove_column :contract_productions, :plus_code
      end

  def down
    add_column :contract_productions, :plus_code, :string
  end
end
