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

ActiveRecord::Schema.define(version: 2021_04_07_145618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.string "subject"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.integer "room"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "room_availabilities", force: :cascade do |t|
    t.datetime "ra_date"
    t.integer "room"
    t.boolean "_12_am"
    t.boolean "_1_am"
    t.boolean "_2_am"
    t.boolean "_3_am"
    t.boolean "_4_am"
    t.boolean "_5_am"
    t.boolean "_6_am"
    t.boolean "_7_am"
    t.boolean "_8_am"
    t.boolean "_9_am"
    t.boolean "_10_am"
    t.boolean "_11_am"
    t.boolean "_12_pm"
    t.boolean "_1_pm"
    t.boolean "_2_pm"
    t.boolean "_3_pm"
    t.boolean "_4_pm"
    t.boolean "_5_pm"
    t.boolean "_6_pm"
    t.boolean "_7_pm"
    t.boolean "_8_pm"
    t.boolean "_9_pm"
    t.boolean "_10_pm"
    t.boolean "_11_pm"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "time_availabilities", force: :cascade do |t|
    t.datetime "ta_date_time"
    t.integer "rooms_reserved"
    t.integer "rooms_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
