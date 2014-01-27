class CreateEnterpriseFees < ActiveRecord::Migration
  def change
    create_table :enterprise_fees do |t|
      t.integer :enterprise_id
      t.integer :code
      t.integer :load_port
      t.timestamps
    end
  end
end
