class RetContent < ActiveRecord::Migration
  def change
    add_column :app_bill_dispatch_records, :ret_content, :text
  end
end
