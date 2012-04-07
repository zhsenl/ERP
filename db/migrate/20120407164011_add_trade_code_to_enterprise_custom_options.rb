class AddTradeCodeToEnterpriseCustomOptions < ActiveRecord::Migration
  def change
    add_column :enterprise_custom_options, :trade_code, :string

  end
end
