class CreateMetalCabinets < ActiveRecord::Migration
  def change
    create_table :metal_cabinets do |t|

      t.timestamps
    end
  end
end
