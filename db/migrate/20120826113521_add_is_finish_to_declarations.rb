class AddIsFinishToDeclarations < ActiveRecord::Migration
  def change
    add_column :declarations, :is_finish, :boolean
  end
end
