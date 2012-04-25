# -*- encoding : utf-8 -*-
class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.integer :enterprise_id
      t.string :code
      t.string :name
      t.string :specification
      t.string :unit
      t.string :unit1
      t.string :unit2
      t.string :country

      t.timestamps
    end
  end
end
