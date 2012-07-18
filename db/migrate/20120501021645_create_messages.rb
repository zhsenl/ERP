# -*- encoding : utf-8 -*-
class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :peer
      t.string :subject
      t.string :body
      t.boolean :sent
      t.boolean :read

      t.timestamps
    end
  end
end
