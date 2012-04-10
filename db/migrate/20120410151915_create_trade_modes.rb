class CreateTradeModes < ActiveRecord::Migration
  def change
    create_table :trade_modes do |t|

      t.timestamps
    end
  end
end
