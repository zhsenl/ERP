class AddSysTypeToBill < ActiveRecord::Migration
  def change
    add_column :bills, :sys_type, :string
  end
end
