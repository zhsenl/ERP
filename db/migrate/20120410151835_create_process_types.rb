class CreateProcessTypes < ActiveRecord::Migration
  def change
    create_table :process_types do |t|

      t.timestamps
    end
  end
end
