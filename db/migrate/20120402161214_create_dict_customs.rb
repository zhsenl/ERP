class CreateDictCustoms < ActiveRecord::Migration
  def change
    create_table :dict_customs do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
