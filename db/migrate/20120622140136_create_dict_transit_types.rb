# -*- encoding : utf-8 -*-
class CreateDictTransitTypes < ActiveRecord::Migration
  def change
    create_table :dict_transit_types do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
