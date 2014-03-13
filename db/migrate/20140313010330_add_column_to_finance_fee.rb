class AddColumnToFinanceFee < ActiveRecord::Migration
  def change
    add_column  :finance_fees, :checkout_enterprise_id, :integer
  end
end
