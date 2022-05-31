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

ActiveRecord::Schema.define(version: 2022_05_24_062926) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applies", force: :cascade do |t|
    t.bigint "classification", default: 0, null: false
    t.bigint "apply", default: 0, null: false
    t.bigint "user_id", null: false
    t.bigint "schedule_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["schedule_id"], name: "index_applies_on_schedule_id"
    t.index ["user_id"], name: "index_applies_on_user_id"
  end

  create_table "approvals", force: :cascade do |t|
    t.bigint "approval", default: 0, null: false
    t.bigint "user_id", null: false
    t.bigint "sub_business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_business_id"], name: "index_approvals_on_sub_business_id"
    t.index ["user_id"], name: "index_approvals_on_user_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.bigint "prescribed_time_main", default: 40, null: false
    t.bigint "agreement_time", default: 45, null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_contracts_on_user_id"
  end

  create_table "main_business_times", force: :cascade do |t|
    t.datetime "start_time_main", null: false
    t.datetime "end_time_main"
    t.bigint "timecard_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["timecard_id"], name: "index_main_business_times_on_timecard_id"
    t.index ["user_id"], name: "index_main_business_times_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "start_time_sch", null: false
    t.datetime "end_time_sch", null: false
    t.bigint "holiday", default: 0, null: false
    t.bigint "timecard_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["timecard_id"], name: "index_schedules_on_timecard_id"
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "sub_business_times", force: :cascade do |t|
    t.datetime "start_time_sub", null: false
    t.datetime "end_time_sub"
    t.bigint "timecard_id", null: false
    t.bigint "user_id", null: false
    t.bigint "sub_business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_business_id"], name: "index_sub_business_times_on_sub_business_id"
    t.index ["timecard_id"], name: "index_sub_business_times_on_timecard_id"
    t.index ["user_id"], name: "index_sub_business_times_on_user_id"
  end

  create_table "sub_businesses", force: :cascade do |t|
    t.bigint "status", default: 0, null: false
    t.string "sub_business_company", null: false
    t.text "sub_business_content", null: false
    t.bigint "prescribed_time_sub", default: 0, null: false
    t.bigint "over_time", default: 0, null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_sub_businesses_on_user_id"
  end

  create_table "timecards", force: :cascade do |t|
    t.date "date", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_timecards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "admin", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
