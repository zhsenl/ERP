class CreateDictPayWays < ActiveRecord::Migration
  def change
    create_table :dict_pay_ways do |t|

      t.timestamps
    end
  end
end
