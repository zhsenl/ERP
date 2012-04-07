class AddCodeUniquenessIndexToEnterprise < ActiveRecord::Migration
  def change
    add_index :enterprises, :code, :unique => true
  end
end
