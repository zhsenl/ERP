# -*- encoding : utf-8 -*-
class RemovePlusCodeFromContractMaterials < ActiveRecord::Migration
  def up
    remove_column :contract_materials, :plus_code
      end

  def down
    add_column :contract_materials, :plus_code, :string
  end
end
