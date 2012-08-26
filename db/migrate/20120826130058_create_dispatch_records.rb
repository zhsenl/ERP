class CreateDispatchRecords < ActiveRecord::Migration
  def change
    create_table :dispatch_records do |t|
      t.string :declaration_id
      t.string :message_id
      t.string :channel
      t.string :task_id
      t.string :note

      t.timestamps
    end
  end
end
