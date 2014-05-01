class CreateCheckMethods < ActiveRecord::Migration
  def change
    create_table :check_methods do |t|
      t.date :from
      t.date :to
      t.string :method
      t.decimal :price
      t.integer :currency

      t.timestamps
    end
  end
end
