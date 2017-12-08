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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20171206214420) do
=======
ActiveRecord::Schema.define(version: 20171206210701) do
>>>>>>> ff0080590d58cc712470cb01878e4c496aabb347

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

<<<<<<< HEAD
  create_table "orders_products", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "order_id", null: false
    t.bigint "product_id", null: false
  end

  create_table "product_orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "product_id"
    t.bigint "order_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_product_orders_on_order_id"
    t.index ["product_id"], name: "index_product_orders_on_product_id"
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "category_id"
=======
  create_table "products", force: :cascade do |t|
    t.integer "category_id"
>>>>>>> ff0080590d58cc712470cb01878e4c496aabb347
    t.string "name"
    t.integer "price"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

<<<<<<< HEAD
  create_table "products_orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "product_id"
    t.bigint "order_id"
=======
  create_table "products_orders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
>>>>>>> ff0080590d58cc712470cb01878e4c496aabb347
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_products_orders_on_order_id"
    t.index ["product_id"], name: "index_products_orders_on_product_id"
  end

<<<<<<< HEAD
  add_foreign_key "orders", "customers"
  add_foreign_key "product_orders", "orders"
  add_foreign_key "product_orders", "products"
=======
>>>>>>> ff0080590d58cc712470cb01878e4c496aabb347
end
