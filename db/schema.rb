# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_05_154656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "description"
    t.decimal "price"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "giftboxbooks", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "giftbox_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_giftboxbooks_on_book_id"
    t.index ["giftbox_id"], name: "index_giftboxbooks_on_giftbox_id"
  end

  create_table "giftboxes", force: :cascade do |t|
    t.string "organization"
    t.string "category"
    t.string "title"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchased_boxes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "giftbox_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["giftbox_id"], name: "index_purchased_boxes_on_giftbox_id"
    t.index ["user_id"], name: "index_purchased_boxes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "giftboxbooks", "books"
  add_foreign_key "giftboxbooks", "giftboxes"
  add_foreign_key "purchased_boxes", "giftboxes"
  add_foreign_key "purchased_boxes", "users"
end
