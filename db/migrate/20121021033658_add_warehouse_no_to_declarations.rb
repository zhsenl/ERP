class AddWarehouseNoToDeclarations < ActiveRecord::Migration
  def change
    add_column :declarations, :warehouse_no, :string
  end
end
