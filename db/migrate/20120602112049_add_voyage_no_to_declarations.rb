# -*- encoding : utf-8 -*-
class AddVoyageNoToDeclarations < ActiveRecord::Migration
  def change
    add_column :declarations, :voyage_no, :string
  end
end
