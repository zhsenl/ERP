# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120427160622) do

  create_table "cargos", :force => true do |t|
    t.integer  "enterprise_id"
    t.string   "code"
    t.string   "name"
    t.string   "specification"
    t.string   "unit"
    t.string   "unit1"
    t.string   "unit2"
    t.string   "country"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "contract_consumptions", :force => true do |t|
    t.integer  "contract_product_id"
    t.integer  "contract_material_id"
    t.decimal  "used",                 :precision => 15, :scale => 4
    t.decimal  "wasted",               :precision => 15, :scale => 4
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
  end

  create_table "contract_materials", :force => true do |t|
    t.integer  "contract_id"
    t.string   "code"
    t.string   "name"
    t.string   "specification"
    t.string   "unit"
    t.string   "unit1"
    t.string   "unit2"
    t.decimal  "quantity",      :precision => 15, :scale => 4
    t.decimal  "unit_price",    :precision => 15, :scale => 4
    t.string   "country"
    t.string   "tax_mode"
    t.string   "no"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "contract_products", :force => true do |t|
    t.integer  "contract_id"
    t.string   "code"
    t.string   "name"
    t.string   "specification"
    t.string   "unit"
    t.string   "unit1"
    t.string   "unit2"
    t.decimal  "quantity",      :precision => 15, :scale => 4
    t.decimal  "unit_price",    :precision => 15, :scale => 4
    t.string   "country"
    t.string   "tax_mode"
    t.string   "no"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "contracts", :force => true do |t|
    t.integer  "enterprise_id"
    t.string   "operate_enterprise"
    t.string   "foreign_enterprise"
    t.string   "manual"
    t.string   "trade_mode"
    t.string   "tax_kind"
    t.string   "export_contract"
    t.string   "export_currency"
    t.string   "export_deal_mode"
    t.date     "export_deadline"
    t.string   "import_contract"
    t.string   "import_currency"
    t.string   "import_deal_mode"
    t.date     "import_deadline"
    t.date     "type_in_date"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "declarations", :force => true do |t|
    t.string   "declaration_type"
    t.string   "pre_entry_no"
    t.string   "entry_no"
    t.string   "eport_no"
    t.string   "declarant"
    t.string   "declare_enterprise"
    t.string   "operate_enterprise"
    t.string   "custom"
    t.string   "enrol_no"
    t.date     "declare_date"
    t.string   "transport_mode"
    t.string   "transport_tool"
    t.string   "truck"
    t.string   "bill_no"
    t.string   "trade_mode"
    t.string   "tax_kind"
    t.string   "trade_country"
    t.string   "port"
    t.string   "destination"
    t.string   "pay_way"
    t.string   "certification"
    t.string   "deal_mode"
    t.integer  "package_amount"
    t.string   "wrap_type"
    t.decimal  "gross_weight",       :precision => 10, :scale => 0
    t.decimal  "net_weight",         :precision => 10, :scale => 0
    t.string   "load_port"
    t.string   "memo"
    t.string   "attachments"
    t.date     "import_export_date"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "dict_attachments", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_brackets", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "manufacturer"
    t.string   "specification"
    t.decimal  "weight",        :precision => 15, :scale => 4
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "dict_bring_in_modes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_containers", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "valent_num"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_countries", :force => true do |t|
    t.string   "code"
    t.string   "english_name"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "dict_currencies", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_customs", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_deal_modes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_declare_modes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_districts", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "kind"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_goods", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "plus_code"
    t.string   "unit1"
    t.string   "unit2"
    t.string   "memo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_investment_modes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_load_ports", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "custom_code"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "dict_metal_cabinets", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.decimal  "weight",     :precision => 15, :scale => 4
    t.string   "size"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "dict_pay_ways", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_ports", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_process_types", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_receipt_statuses", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_tax_kinds", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_tax_modes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_trade_modes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_transport_modes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_trucks", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "ic_card"
    t.string   "corporation_name"
    t.string   "hk_truck_no"
    t.string   "corporation_address"
    t.string   "corporation_code"
    t.string   "corporation_telephone"
    t.string   "driver_name"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "dict_units", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_usages", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dict_wrap_types", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "enterprise_custom_options", :force => true do |t|
    t.integer  "enterprise_id"
    t.string   "custom_code"
    t.string   "platform_id"
    t.string   "area_name"
    t.string   "user_private_key"
    t.string   "process_no"
    t.string   "ic_card_no"
    t.string   "certificate_no"
    t.decimal  "proxy_unit_price",   :precision => 15, :scale => 4
    t.decimal  "service_unit_price", :precision => 15, :scale => 4
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.string   "trade_code"
  end

  create_table "enterprises", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "address"
    t.string   "linkman"
    t.string   "telephone"
    t.string   "fax"
    t.string   "bank"
    t.string   "bank_account"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "enterprises", ["code"], :name => "index_enterprises_on_code", :unique => true

  create_table "foreign_enterprises", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "address"
    t.string   "linkman"
    t.string   "telephone"
    t.string   "fax"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "foreign_enterprises", ["code"], :name => "index_foreign_enterprises_on_code", :unique => true

  create_table "manage_relationships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "enterprise_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "options", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.text     "mark"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "salt"
    t.string   "encrypted_password"
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "roles_mask"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
