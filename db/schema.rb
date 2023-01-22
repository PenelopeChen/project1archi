ActiveRecord::Schema.define(version: 2023_01_22_023530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "architects", force: :cascade do |t|
    t.text "name"
    t.text "nationality"
    t.date "dob"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "architects_users", force: :cascade do |t|
    t.integer "architect_id"
    t.integer "user_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.text "name"
    t.text "year"
    t.text "style"
    t.text "place"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings_users", force: :cascade do |t|
    t.integer "building_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
