class CreatePorts < ActiveRecord::Migration
  def change
    create_table :ports do |t|

      t.timestamps
    end
  end
end
