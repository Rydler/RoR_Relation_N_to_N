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

ActiveRecord::Schema.define(version: 2020_09_19_022443) do

  create_table "job_titles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "magazineoenologistjobtitles", force: :cascade do |t|
    t.integer "magazine_id", null: false
    t.integer "oenologist_id", null: false
    t.integer "job_title_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_title_id"], name: "index_magazineoenologistjobtitles_on_job_title_id"
    t.index ["magazine_id"], name: "index_magazineoenologistjobtitles_on_magazine_id"
    t.index ["oenologist_id"], name: "index_magazineoenologistjobtitles_on_oenologist_id"
  end

  create_table "magazines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "oenologists", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "nationality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "oenologists_wines", id: false, force: :cascade do |t|
    t.integer "oenologist_id", null: false
    t.integer "wine_id", null: false
  end

  create_table "strains", force: :cascade do |t|
    t.string "name"
    t.boolean "available", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wine_strains", force: :cascade do |t|
    t.integer "wine_id", null: false
    t.integer "strain_id", null: false
    t.integer "percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["strain_id"], name: "index_wine_strains_on_strain_id"
    t.index ["wine_id"], name: "index_wine_strains_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "magazineoenologistjobtitles", "job_titles"
  add_foreign_key "magazineoenologistjobtitles", "magazines"
  add_foreign_key "magazineoenologistjobtitles", "oenologists"
  add_foreign_key "wine_strains", "strains"
  add_foreign_key "wine_strains", "wines"
end
