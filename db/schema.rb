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

ActiveRecord::Schema.define(version: 2019_04_17_215004) do

  create_table "battles", force: :cascade do |t|
    t.string "name"
    t.string "victory"
    t.integer "boss_id"
    t.integer "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boss_id"], name: "index_battles_on_boss_id"
    t.index ["character_id"], name: "index_battles_on_character_id"
  end

  create_table "bosses", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.integer "level"
    t.integer "physical_damage"
    t.integer "magical_damage"
    t.integer "armor"
    t.string "weaknesses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.integer "level"
    t.integer "physical_damage"
    t.integer "magical_damage"
    t.integer "armor"
    t.integer "user_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.index ["job_id"], name: "index_characters_on_job_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "weaknesses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
