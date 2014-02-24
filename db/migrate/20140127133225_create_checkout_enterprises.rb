class CreateCheckoutEnterprises < ActiveRecord::Migration
  def change
    create_table :checkout_enterprises do |t|
      t.integer :finance_id
      t.integer :organization_code
      t.timestamps
    end
  end
end
