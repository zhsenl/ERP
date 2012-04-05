# -*- encoding : utf-8 -*-
class CreateEnterpriseCustomOptions < ActiveRecord::Migration
  def change
    create_table :enterprise_custom_options do |t|
      t.integer :enterprise_id
      t.string :custom_code
      t.string :platform_id
      t.string :area_name
      t.string :user_private_key
      t.string :process_no
      t.string :ic_card_no
      t.string :certificate_no
      t.decimal :proxy_unit_price, :precision => 15, :scale => 4
      t.decimal :service_unit_price, :precision => 15, :scale => 4

      t.timestamps
    end
  end
end
