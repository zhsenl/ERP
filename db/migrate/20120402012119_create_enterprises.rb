# -*- encoding : utf-8 -*-
class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string :trade_code
      t.string :registe_name
      t.string :address
      t.string :linkman
      t.string :legal_person_code
      t.string :telephone
      t.string :fax
      t.string :bank
      t.string :bank_account

      t.timestamps
    end
  end
end
