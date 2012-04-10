class CreateDictWrapTypes < ActiveRecord::Migration
  def change
    create_table :dict_wrap_types do |t|

      t.timestamps
    end
  end
end
