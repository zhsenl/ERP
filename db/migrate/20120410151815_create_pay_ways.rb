class CreatePayWays < ActiveRecord::Migration
  def change
    create_table :pay_ways do |t|

      t.timestamps
    end
  end
end
