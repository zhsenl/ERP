class AddOrganizationCodeToEnterprise < ActiveRecord::Migration
  def change
    add_column :enterprises, :organization_code, :string
  end
end
