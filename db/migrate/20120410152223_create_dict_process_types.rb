class CreateDictProcessTypes < ActiveRecord::Migration
  def change
    create_table :dict_process_types do |t|

      t.timestamps
    end
  end
end
