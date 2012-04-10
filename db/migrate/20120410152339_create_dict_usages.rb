class CreateDictUsages < ActiveRecord::Migration
  def change
    create_table :dict_usages do |t|

      t.timestamps
    end
  end
end
