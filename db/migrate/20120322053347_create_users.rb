# -*- encoding : utf-8 -*-
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :salt
      t.string :encrypted_password
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
