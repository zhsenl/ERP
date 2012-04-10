class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|

      t.timestamps
    end
  end
end
