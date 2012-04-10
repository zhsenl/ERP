class CreateDictTradeModes < ActiveRecord::Migration
  def change
    create_table :dict_trade_modes do |t|

      t.timestamps
    end
  end
end
