class ChangeNoToId < ActiveRecord::Migration
  def up
      rename_column :applications, :contract_no, :contract_id
	  rename_column :applications, :in_contract_no, :in_contract_id
  end

  def down
      rename_column :applications, :contract_id, :contract_no
	  rename_column :applications, :in_contract_id, :in_contract_no
  end
end
