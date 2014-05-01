class AddColumnToFinance < ActiveRecord::Migration
  def change
    add_column :finances, :is_paid, :boolean, :default => false

  end
end
