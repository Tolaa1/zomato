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

ActiveRecord::Schema.define(version: 2019_04_17_084032) do

  create_table "bookings", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "restaurant_id"
    t.datetime "date"
    t.time "time"
    t.integer "num_people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.integer "age"
    t.string "bio"
    t.string "profile_img"
    t.boolean "is_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "menus", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string "name"
    t.integer "price"
    t.string "is_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "restaurant_id"
    t.string "comment"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "address"
    t.string "locality"
    t.string "latitude"
    t.string "longitude"
    t.string "zipcode"
    t.string "locality_verbose"
    t.string "cuisines"
    t.string "photos_url"
    t.string "menu_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "thumb"
  end

end
