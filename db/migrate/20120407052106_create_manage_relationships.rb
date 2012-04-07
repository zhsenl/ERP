# -*- encoding : utf-8 -*-
class CreateManageRelationships < ActiveRecord::Migration
  def change
    create_table :manage_relationships do |t|
      t.integer :user_id
      t.integer :enterprise_id

      t.timestamps
    end
  end
end
