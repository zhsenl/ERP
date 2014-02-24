class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.integer     :declaration_id
      t.boolean     :is_made
      t.integer     :review
      t.integer     :maker
      t.integer     :reviewer
      t.timestamps
    end
  end
end
