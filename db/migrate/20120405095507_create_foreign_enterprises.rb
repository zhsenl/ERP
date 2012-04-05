# -*- encoding : utf-8 -*-
class CreateForeignEnterprises < ActiveRecord::Migration
  def change
    create_table :foreign_enterprises do |t|
      t.string :code
      t.string :name
      t.string :address
      t.string :linkman
      t.string :telephone
      t.string :fax

      t.timestamps
    end
  end
end
