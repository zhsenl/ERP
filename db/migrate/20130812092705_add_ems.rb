class AddEms < ActiveRecord::Migration
  def change
    add_column :applications, :ems_no, :string
    add_column :applications, :in_ems_no, :string
  end
end
