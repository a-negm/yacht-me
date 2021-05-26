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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_05_26_120136) do
=======
ActiveRecord::Schema.define(version: 2021_05_26_123749) do
>>>>>>> adc30d50681cbef24b18a09df792e33aedc3728b

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "yacht_id", null: false
    t.bigint "user_id", null: false
    t.date "check_out_date"
    t.date "check_in_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bookings_on_user_id"
    t.index ["yacht_id"], name: "index_bookings_on_yacht_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "address"
    t.date "date_of_birth"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "yachts", force: :cascade do |t|
    t.string "name"
    t.string "yacht_type"
    t.integer "length"
    t.integer "number_of_cabins"
    t.integer "rental_price"
    t.text "description"
    t.bigint "user_id", null: false
    t.integer "guests"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
<<<<<<< HEAD
    t.string "location"
    t.float "latitude"
    t.float "longitude"
=======
    t.string "url"
>>>>>>> adc30d50681cbef24b18a09df792e33aedc3728b
    t.index ["user_id"], name: "index_yachts_on_user_id"
  end

  add_foreign_key "bookings", "users"
  add_foreign_key "bookings", "yachts"
  add_foreign_key "yachts", "users"
end
