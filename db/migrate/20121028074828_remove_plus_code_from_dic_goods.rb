class RemovePlusCodeFromDicGoods < ActiveRecord::Migration
  def up
  	remove_column :dict_goods, :plus_code
  end

  def down
  end
end
