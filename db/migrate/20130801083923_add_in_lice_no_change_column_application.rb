class AddInLiceNoChangeColumnApplication < ActiveRecord::Migration
  def up
    add_column :applications, :in_lice_no, :string
    rename_column :applications, :in_declare_date, :in_d_date
  end

  def down
    remove_column :applications, :in_lice_no
    rename_column :applications, :in_d_date, :in_declare_date
  end
end
