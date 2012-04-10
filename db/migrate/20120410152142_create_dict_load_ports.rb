class CreateDictLoadPorts < ActiveRecord::Migration
  def change
    create_table :dict_load_ports do |t|

      t.timestamps
    end
  end
end
