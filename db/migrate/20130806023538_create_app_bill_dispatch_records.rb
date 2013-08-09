class CreateAppBillDispatchRecords < ActiveRecord::Migration
  def change
    create_table :app_bill_dispatch_records do |t|
	  t.string  :application_id
	  t.string  :ret_type
	  t.string  :sort_flag
	  t.integer :ret_no
	  t.string :chk_status
	  t.date :notice_date
	  t.integer :note
      t.timestamps 
    end
  end
end
