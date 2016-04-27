# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160427033602) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.integer  "level"
    t.string   "one_uniq_thing"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "strength"
    t.integer  "constitution"
    t.integer  "dexterity"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.string   "character_class"
    t.integer  "hp"
    t.integer  "ac"
    t.integer  "pd"
    t.integer  "md"
    t.integer  "recovery_dice_total"
    t.integer  "recovery_dice_used"
    t.string   "race"
  end

end
