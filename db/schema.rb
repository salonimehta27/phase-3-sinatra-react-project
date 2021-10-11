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

ActiveRecord::Schema.define(version: 2021_10_10_015753) do

  create_table "actions", force: :cascade do |t|
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "original_name"
    t.string "name"
    t.string "original_title"
    t.string "title"
  end

  create_table "comedies", force: :cascade do |t|
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "original_name"
    t.string "name"
    t.string "original_title"
    t.string "title"
  end

  create_table "documentaries", force: :cascade do |t|
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "original_name"
    t.string "name"
    t.string "original_title"
    t.string "title"
  end

  create_table "horrors", force: :cascade do |t|
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "original_name"
    t.string "name"
    t.string "original_title"
    t.string "title"
  end

  create_table "netflix_originals", force: :cascade do |t|
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "original_name"
    t.string "original_title"
    t.string "title"
    t.string "name"
  end

  create_table "romances", force: :cascade do |t|
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "original_name"
    t.string "name"
    t.string "original_title"
    t.string "title"
  end

  create_table "top_rateds", force: :cascade do |t|
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "original_name"
    t.string "name"
    t.string "original_title"
    t.string "title"
  end

  create_table "trendings", force: :cascade do |t|
    t.string "poster_path"
    t.string "backdrop_path"
    t.string "overview"
    t.string "original_name"
    t.string "name"
    t.string "original_title"
    t.string "title"
  end

end
