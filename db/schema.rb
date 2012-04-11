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

ActiveRecord::Schema.define(:version => 20120407164011) do

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
    t.integer  "roles_mask"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
