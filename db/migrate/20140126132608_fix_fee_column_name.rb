class FixFeeColumnName < ActiveRecord::Migration
  def up
    rename_column :dict_fees, :no, :code
    rename_column :dict_fees, :name_cn, :name
    rename_column :dict_fees, :currency_no, :currency_code
  end

  def down
  end
end
