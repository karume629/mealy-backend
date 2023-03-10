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

ActiveRecord::Schema[7.0].define(version: 2023_01_25_203137) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "avatar", default: "https://robohash.org/providentfugaest.png?size=300x300&set=set1"
    t.boolean "is_admin", default: true
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calendars", force: :cascade do |t|
    t.date "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.integer "price"
    t.integer "subtotal", default: 0
    t.integer "quantity", default: 0
    t.text "description"
    t.bigint "admin_id", null: false
    t.bigint "calendar_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_meals_on_admin_id"
    t.index ["calendar_id"], name: "index_meals_on_calendar_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "user_id", null: false
    t.bigint "meal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_orders_on_meal_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "avatar", default: "https://robohash.org/cupiditatecumqueperspiciatis.png?size=300x300&set=set1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "meals", "admins"
  add_foreign_key "meals", "calendars"
  add_foreign_key "orders", "meals"
  add_foreign_key "orders", "users"
end
