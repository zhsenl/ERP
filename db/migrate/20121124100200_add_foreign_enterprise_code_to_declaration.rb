class AddForeignEnterpriseCodeToDeclaration < ActiveRecord::Migration
  def change
    add_column :declarations, :foreign_enterprise_code, :string
  end
end
