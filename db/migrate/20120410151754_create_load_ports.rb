class CreateLoadPorts < ActiveRecord::Migration
  def change
    create_table :load_ports do |t|

      t.timestamps
    end
  end
end
