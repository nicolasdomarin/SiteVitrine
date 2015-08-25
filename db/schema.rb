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

ActiveRecord::Schema.define(version: 20150825102951) do

  create_table "categories", force: true do |t|
    t.string "label"
  end

  create_table "order_rows", force: true do |t|
    t.integer "order_id"
    t.integer "product_id"
  end

  create_table "orders", force: true do |t|
    t.string   "order_code"
    t.integer  "sale_id"
    t.string   "status"
    t.integer  "buyer_address_id"
    t.datetime "created_at"
  end

  create_table "products", force: true do |t|
    t.string   "label"
    t.decimal  "price",              precision: 10, scale: 0
    t.decimal  "special_price",      precision: 10, scale: 0
    t.text     "description"
    t.integer  "stock"
    t.integer  "category_id"
    t.integer  "sale_id"
    t.integer  "supplier_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "sales", force: true do |t|
    t.datetime "start_datetime",                          null: false
    t.datetime "end_datetime",                            null: false
    t.string   "label"
    t.text     "description"
    t.decimal  "shipping_fees",  precision: 10, scale: 0
  end

  create_table "suppliers", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.string   "last_name",                                       null: false
    t.string   "first_name",                                      null: false
    t.string   "email",                                           null: false
    t.string   "password_digest",                                 null: false
    t.string   "role"
    t.string   "username",                                        null: false
    t.datetime "created_at",      default: '2015-08-25 16:03:27'
    t.integer  "newsletter",      default: 1
    t.string   "salt"
  end

end
