class AddCreatedByToDeclaration < ActiveRecord::Migration
  def change
    add_column :declarations, :created_by, :string
  end
end
