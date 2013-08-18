class AddFinishToBillApplication < ActiveRecord::Migration
  def change
    add_column :applications, :is_out_finish, :boolean, :default => false
    add_column :applications, :is_finish, :boolean, :default => false

    add_column :bills, :is_out_finish, :boolean, :default => false
    add_column :bills, :is_finish, :boolean, :default => false

  end
end
