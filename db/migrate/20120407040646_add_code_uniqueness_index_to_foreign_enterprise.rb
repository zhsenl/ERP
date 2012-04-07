# -*- encoding : utf-8 -*-
class AddCodeUniquenessIndexToForeignEnterprise < ActiveRecord::Migration
  def change
    add_index :foreign_enterprises, :code, :unique => true
  end
end
