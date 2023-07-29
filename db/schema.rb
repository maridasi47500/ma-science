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

ActiveRecord::Schema[7.0].define(version: 2023_07_29_215010) do
  create_table "batteries", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "circleobjects", force: :cascade do |t|
    t.integer "game_id"
    t.integer "image_id"
    t.boolean "mycond"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crossorticks", force: :cascade do |t|
    t.integer "game_id"
    t.integer "image_id"
    t.boolean "ok"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamehasmaterials", force: :cascade do |t|
    t.integer "game_id"
    t.integer "materials_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamehasstuffhaspics", force: :cascade do |t|
    t.integer "game_id"
    t.integer "mystuffhaspic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamehastuffs", force: :cascade do |t|
    t.integer "game_id"
    t.integer "stuff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamehaswords", force: :cascade do |t|
    t.integer "game_id"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "myscience_id"
    t.string "title"
    t.text "content"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials_images", force: :cascade do |t|
    t.integer "material_id"
    t.integer "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "momentdays", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mybatteries", force: :cascade do |t|
    t.integer "game_id"
    t.integer "mystuffhaspic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mysciences", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mystuffhaspics", force: :cascade do |t|
    t.integer "stuff_id"
    t.integer "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stuffs", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
  end

end
