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

ActiveRecord::Schema.define(version: 2019_01_31_200719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "associates", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hours_per_week"
    t.index ["department_id"], name: "index_associates_on_department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.bigint "dept_manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dept_manager_id"], name: "index_departments_on_dept_manager_id"
  end

  create_table "dept_managers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dept_shifts", force: :cascade do |t|
    t.integer "no_of_shift"
    t.bigint "department_id"
    t.bigint "shift_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_dept_shifts_on_department_id"
    t.index ["shift_id"], name: "index_dept_shifts_on_shift_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.date "date"
    t.bigint "associate_id"
    t.bigint "shift_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department_id"
    t.index ["associate_id"], name: "index_schedules_on_associate_id"
    t.index ["shift_id"], name: "index_schedules_on_shift_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.string "title"
    t.time "start_time"
    t.time "end_time"
    t.integer "hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.integer "dept_manager_id"
    t.integer "associate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "associates", "departments"
  add_foreign_key "departments", "dept_managers"
  add_foreign_key "dept_shifts", "departments"
  add_foreign_key "dept_shifts", "shifts"
  add_foreign_key "schedules", "associates"
  add_foreign_key "schedules", "shifts"
end
