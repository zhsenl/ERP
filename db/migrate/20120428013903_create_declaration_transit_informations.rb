# -*- encoding : utf-8 -*-
class CreateDeclarationTransitInformations < ActiveRecord::Migration
  def change
    create_table :declaration_transit_informations do |t|
      t.integer :declaration_id
      t.string :corporation_name
      t.string :corporation_code
      t.string :transport_tool_code
      t.string :transport_tool_name
      t.string :transport_tool_voyage_no
      t.string :bill_no
      t.string :local_transport_mode
      t.string :local_transport_tool_code
      t.string :local_transport_tool_name
      t.string :local_transport_tool_voyage_no

      t.timestamps
    end
  end
end
