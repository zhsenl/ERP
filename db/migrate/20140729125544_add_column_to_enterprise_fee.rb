class AddColumnToEnterpriseFee < ActiveRecord::Migration
  def change
    add_column :enterprise_fees, :checkout_enterprise_code, :string
  end
end
