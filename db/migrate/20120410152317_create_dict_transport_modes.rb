class CreateDictTransportModes < ActiveRecord::Migration
  def change
    create_table :dict_transport_modes do |t|

      t.timestamps
    end
  end
end
