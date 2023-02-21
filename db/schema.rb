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

ActiveRecord::Schema[7.0].define(version: 2023_02_21_145554) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string "contraintes"
    t.string "bring"
    t.integer "quantites"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trains", force: :cascade do |t|
    t.string "nom"
    t.string "ville_depart"
    t.string "ville_arrivee"
    t.time "heure_aller"
    t.date "date_aller"
    t.time "heure_retour"
    t.time "date_retour"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voitures", force: :cascade do |t|
    t.string "nom"
    t.string "ville"
    t.text "lieu_rdv"
    t.integer "nb_place"
    t.time "heure_aller"
    t.date "date_aller"
    t.time "heure_retour"
    t.time "date_retour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
