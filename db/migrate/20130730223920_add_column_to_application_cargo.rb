class AddColumnToApplicationCargo < ActiveRecord::Migration
  def change
    add_column :application_cargos, :type, :boolean
  end
end
