class ChangeCollumnToCheckEnterprises < ActiveRecord::Migration
  def change
    change_column :checkout_enterprises, :organization_code, :string
  end
end
