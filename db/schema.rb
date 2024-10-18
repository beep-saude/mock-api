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

ActiveRecord::Schema[7.2].define(version: 2024_10_17_130427) do
  create_table "authorizations", force: :cascade do |t|
    t.string "patient_name"
    t.string "patient_cpf"
    t.integer "catalog_exam_id", null: false
    t.string "authorization_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catalog_exam_id"], name: "index_authorizations_on_catalog_exam_id"
  end

  create_table "features", force: :cascade do |t|
    t.boolean "start"
    t.integer "qtd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "authorizations", "catalog_exams"
end
