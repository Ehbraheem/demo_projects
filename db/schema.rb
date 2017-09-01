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

ActiveRecord::Schema.define(version: 20170901224720) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "prefix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "products_count", default: 0
    t.integer "parent_id"
    t.index ["parent_id"], name: "index_categories_on_parent_id"
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.integer "inventory"
    t.decimal "price", precision: 7, scale: 2
    t.datetime "restocked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "qty_sold"
    t.string "ref_num"
    t.bigint "category_id"
    t.string "type"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["ref_num"], name: "index_products_on_ref_num"
  end

end
