class CreateWrapTypes < ActiveRecord::Migration
  def change
    create_table :wrap_types do |t|

      t.timestamps
    end
  end
end
