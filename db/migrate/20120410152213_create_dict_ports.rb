class CreateDictPorts < ActiveRecord::Migration
  def change
    create_table :dict_ports do |t|

      t.timestamps
    end
  end
end
