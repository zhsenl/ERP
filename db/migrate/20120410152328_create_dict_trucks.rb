class CreateDictTrucks < ActiveRecord::Migration
  def change
    create_table :dict_trucks do |t|

      t.timestamps
    end
  end
end
