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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160328121208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.integer  "on_storage"
    t.integer  "on_shop"
    t.integer  "purchase_price"
    t.integer  "base_price"
    t.integer  "after_tax_price"
    t.integer  "wholesale_price"
    t.integer  "retail_price"
    t.string   "bag_code"
    t.string   "shop_code"
    t.text     "description"
    t.string   "colors"
    t.string   "sizes"
    t.datetime "last_purchase_at"
    t.boolean  "deleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
