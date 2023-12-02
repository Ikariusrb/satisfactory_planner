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

ActiveRecord::Schema[7.1].define(version: 2023_12_02_175648) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "unique_items", unique: true
  end

  create_table "locations", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "plan_id", null: false
    t.index ["plan_id", "name"], name: "index_locations_on_plan_id_and_name", unique: true
    t.index ["plan_id"], name: "index_locations_on_plan_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "admin_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id", "name"], name: "index_plans_on_admin_user_id_and_name", unique: true
    t.index ["admin_user_id"], name: "index_plans_on_admin_user_id"
    t.index ["name"], name: "unique_plans", unique: true
  end

  create_table "production_stage_inputs", force: :cascade do |t|
    t.bigint "production_stage_id", null: false
    t.bigint "item_id", null: false
    t.decimal "rate", precision: 9, scale: 3, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_production_stage_inputs_on_item_id"
    t.index ["production_stage_id"], name: "index_production_stage_inputs_on_production_stage_id"
  end

  create_table "production_stage_outputs", force: :cascade do |t|
    t.bigint "production_stage_id", null: false
    t.bigint "item_id", null: false
    t.decimal "rate", precision: 9, scale: 3, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_production_stage_outputs_on_item_id"
    t.index ["production_stage_id"], name: "index_production_stage_outputs_on_production_stage_id"
  end

  create_table "production_stages", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "plan_id", null: false
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_production_stages_on_location_id"
    t.index ["plan_id", "name"], name: "index_production_stages_on_plan_id_and_name", unique: true
    t.index ["plan_id"], name: "index_production_stages_on_plan_id"
  end

end
