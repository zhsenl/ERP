class CreateInvestmentModes < ActiveRecord::Migration
  def change
    create_table :investment_modes do |t|

      t.timestamps
    end
  end
end
