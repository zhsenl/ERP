class ChangeEmsToContract < ActiveRecord::Migration
  def up
    remove_column :applications, :ems_no
    remove_column :applications, :in_ems_no
    add_column :applications, :contract_no, :integer
    add_column :applications, :in_contract_no, :integer
  end

  def down
    add_column :applications, :ems_no, :string
    add_column :applications, :in_ems_no , :string
    remove_column :applications, :contract_no
    remove_column :applications, :in_contract_no
  end
end
