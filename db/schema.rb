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

ActiveRecord::Schema.define(:version => 20130328195257) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "profile_account_id"
  end

  create_table "envelopes", :force => true do |t|
    t.string   "name"
    t.decimal  "budget",             :precision => 10, :scale => 2
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.integer  "profile_account_id"
  end

  create_table "line_items", :force => true do |t|
    t.string   "name"
    t.decimal  "price",              :precision => 10, :scale => 2
    t.date     "date_of_purchase"
    t.text     "description"
    t.datetime "created_at",                                                           :null => false
    t.datetime "updated_at",                                                           :null => false
    t.integer  "profile_account_id"
    t.integer  "envelope_id"
    t.integer  "account_id"
    t.boolean  "allocation",                                        :default => false
  end

  create_table "profile_accounts", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
