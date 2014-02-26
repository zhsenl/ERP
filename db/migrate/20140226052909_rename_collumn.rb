class RenameCollumn < ActiveRecord::Migration
  def change
    rename_column :checkout_enterprises, :organization_code, :code
  end
end
