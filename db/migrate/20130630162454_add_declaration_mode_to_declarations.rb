class AddDeclarationModeToDeclarations < ActiveRecord::Migration
  def change
  	add_column :declarations, :declaration_mode, :string
  end
end
