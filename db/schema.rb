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

ActiveRecord::Schema.define(version: 20161229231022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "merchants", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "email"
    t.text     "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_merchants_on_email", unique: true, using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "merchant_id"
    t.index ["merchant_id"], name: "index_products_on_merchant_id", using: :btree
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.float    "price"
    t.float    "rate"
    t.float    "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_purchases_on_product_id", using: :btree
    t.index ["user_id"], name: "index_purchases_on_user_id", using: :btree
  end

  create_table "user_ratings", force: :cascade do |t|
    t.integer  "user_id"
    t.decimal  "rating"
    t.decimal  "limit"
    t.decimal  "interest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_ratings_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "DOB"
    t.integer  "national_id"
    t.string   "tel_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_foreign_key "products", "merchants"
end
