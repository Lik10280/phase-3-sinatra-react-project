# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_03_06_072827) do

  create_table "bookings", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "payment_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "tel", limit: 8
    t.string "password_digest"
  end

  create_table "rentals", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.string "location"
    t.integer "price", limit: 8
    t.integer "owner_id"
    t.boolean "available"
    t.integer "bookings", default: 0
    t.integer "user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "rental_id"
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_id"], name: "index_reviews_on_rental_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "rentals", "users"
end
