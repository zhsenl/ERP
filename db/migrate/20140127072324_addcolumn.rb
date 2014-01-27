class Addcolumn < ActiveRecord::Migration
  def change
    add_column :enterprise_fees, :name, :string
    add_column :enterprise_fees, :name_en, :string
    add_column :enterprise_fees, :price, :decimal, :precision=>15, :scale=>4
    add_column :enterprise_fees, :currency_code, :string
    add_column :enterprise_fees, :is_income, :boolean
    add_column :enterprise_fees, :is_pay, :boolean
    add_column :enterprise_fees, :note, :text
    rename_column :enterprise_fees, :fee, :code

  end
end
