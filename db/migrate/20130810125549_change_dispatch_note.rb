class ChangeDispatchNote < ActiveRecord::Migration
  def up
    change_column :app_bill_dispatch_records , :note, :text
  end

  def down
    change_column :app_bill_dispatch_records, :note, :int
  end
end
