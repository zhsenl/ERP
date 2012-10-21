class AddLicenseToDeclarations < ActiveRecord::Migration
  def change
    add_column :declarations, :license, :string
  end
end
