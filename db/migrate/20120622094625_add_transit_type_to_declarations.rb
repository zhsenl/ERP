# -*- encoding : utf-8 -*-
class AddTransitTypeToDeclarations < ActiveRecord::Migration
  def change
    add_column :declarations, :transit_type, :string
  end
end
