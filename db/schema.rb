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

ActiveRecord::Schema.define(version: 20190323182322) do

  create_table "personagens", force: :cascade do |t|
    t.string "nome"
    t.integer "forca"
    t.integer "resistencia"
    t.integer "agilidade"
    t.integer "destreza"
  end

  create_table "poderes", force: :cascade do |t|
    t.integer "personagem_id"
    t.string "nome"
    t.string "tipo"
    t.index ["personagem_id"], name: "index_poderes_on_personagem_id"
  end

end
