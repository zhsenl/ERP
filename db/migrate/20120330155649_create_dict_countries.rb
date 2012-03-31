# -*- encoding : utf-8 -*-
class CreateDictCountries < ActiveRecord::Migration
  def change
    create_table :dict_countries do |t|
      t.string :code
      t.string :name
      t.string :english_name

      t.timestamps
    end
  end
end
