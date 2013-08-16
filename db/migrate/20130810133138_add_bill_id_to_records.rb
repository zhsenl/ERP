class AddBillIdToRecords < ActiveRecord::Migration
  def change
    add_column :app_bill_dispatch_records, :bill_id, :integer
  end
end
