class AddAutoloadToOptions < ActiveRecord::Migration
  def change
    add_column :options, :autoload, :boolean

  end
end
