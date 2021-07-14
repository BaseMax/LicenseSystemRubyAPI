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

ActiveRecord::Schema.define(version: 2021_07_14_123219) do

  create_table "serial", id: { type: :integer, unsigned: true }, charset: "utf8", force: :cascade do |t|
    t.string "ip", limit: 60, null: false
    t.string "key_customer", limit: 40, null: false
    t.string "key_ip", limit: 40, null: false
    t.string "key_license", limit: 40, null: false
    t.integer "datetime", null: false, unsigned: true
    t.integer "datetime_expire", null: false, unsigned: true
    t.integer "use_first", unsigned: true
    t.integer "use_last", unsigned: true
    t.integer "status", default: 0, null: false, comment: "0=active, 1=blocked", unsigned: true
    t.index ["datetime"], name: "datetime"
    t.index ["datetime_expire"], name: "datetime_expire"
    t.index ["ip"], name: "ip"
    t.index ["key_customer"], name: "key_customer"
    t.index ["key_ip"], name: "key_ip"
    t.index ["key_license"], name: "key_license"
    t.index ["status"], name: "status"
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "ip"
    t.string "key_user"
    t.string "key_ip"
    t.string "key_license"
    t.integer "datetime"
    t.integer "datetime_expire"
    t.integer "use_first"
    t.integer "use_last"
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
