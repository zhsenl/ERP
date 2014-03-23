class AddCombineNoToFinance < ActiveRecord::Migration
  def change
    add_column :finances, :combine_no, :integer
  end
end
