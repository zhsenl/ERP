class CreateDictMetalCabinets < ActiveRecord::Migration
  def change
    create_table :dict_metal_cabinets do |t|

      t.timestamps
    end
  end
end
