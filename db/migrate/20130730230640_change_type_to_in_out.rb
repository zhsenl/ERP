class ChangeTypeToInOut < ActiveRecord::Migration
  def up
    rename_column :application_cargos, :type, :in_out
  end

  def down
    rename_column :application_cargos, :in_out, :type
  end
end
