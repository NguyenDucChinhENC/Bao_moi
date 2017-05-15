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

ActiveRecord::Schema.define(version: 20170515091947) do

  create_table "author_books", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_author_books_on_author_id"
    t.index ["book_id"], name: "index_author_books_on_book_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.text     "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.integer  "publishing_company_id"
    t.float    "rate"
    t.float    "price"
    t.text     "summary"
    t.integer  "quantity"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["category_id"], name: "index_books_on_category_id"
    t.index ["publishing_company_id"], name: "index_books_on_publishing_company_id"
  end

  create_table "categories", force: :cascade do |t|
    t.integer  "parents_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parents_id"], name: "index_categories_on_parents_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_comments_on_book_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "order_lines", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "book_id"
    t.float    "price"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_order_lines_on_book_id"
    t.index ["order_id"], name: "index_order_lines_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "address"
    t.float    "total_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "publishing_companies", force: :cascade do |t|
    t.string   "name"
    t.text     "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.integer  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_rates_on_book_id"
    t.index ["user_id"], name: "index_rates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "total_amount_consum", default: 0
    t.boolean  "is_admin",            default: false
    t.integer  "member_type",         default: 0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
