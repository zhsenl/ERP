# -*- encoding : utf-8 -*-
class CreateDictUnits < ActiveRecord::Migration
  def change
    create_table :dict_units do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
