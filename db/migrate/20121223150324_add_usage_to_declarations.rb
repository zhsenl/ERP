class AddUsageToDeclarations < ActiveRecord::Migration
  def change
    add_column :declarations, :usage, :string
  end
end
