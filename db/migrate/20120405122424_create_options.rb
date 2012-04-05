# -*- encoding : utf-8 -*-
class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.text :value
      t.text :mark

      t.timestamps
    end
  end
end
