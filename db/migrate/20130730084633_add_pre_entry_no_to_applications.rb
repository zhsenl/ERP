class AddPreEntryNoToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :pre_entry_no, :string
  end
end
