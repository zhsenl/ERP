class ChangeColumnName < ActiveRecord::Migration
  def up
    rename_column :enterprise_fees, :code, :fee
  end

  def down
  end
end
