class ChangeApplicationCargoColumn < ActiveRecord::Migration
  def up
    rename_column :application_cargos, :declaration_id, :application_id
  end

  def down
    rename_column :application_cargos, :application_id, :declaration_id
  end
end
