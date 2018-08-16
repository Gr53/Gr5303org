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

ActiveRecord::Schema.define(version: 2018_08_16_154110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "coddane"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identification_types", force: :cascade do |t|
    t.string "identificationtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incident_types", force: :cascade do |t|
    t.string "name"
    t.bigint "risk_levels_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["risk_levels_id"], name: "index_incident_types_on_risk_levels_id"
  end

  create_table "incidents", force: :cascade do |t|
    t.bigint "users_id"
    t.string "latitude"
    t.string "longitude"
    t.datetime "fecha"
    t.bigint "incident_types_id"
    t.integer "pmuerte"
    t.integer "nambulancia"
    t.integer "npolicia"
    t.integer "prioridad"
    t.integer "riesgo"
    t.string "descripcion"
    t.integer "gnbtnpanico"
    t.binary "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_types_id"], name: "index_incidents_on_incident_types_id"
    t.index ["users_id"], name: "index_incidents_on_users_id"
  end

  create_table "kiddles", force: :cascade do |t|
    t.bigint "neighborhoods_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighborhoods_id"], name: "index_kiddles_on_neighborhoods_id"
  end

  create_table "localities", force: :cascade do |t|
    t.bigint "cities_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cities_id"], name: "index_localities_on_cities_id"
  end

  create_table "n_nets", force: :cascade do |t|
    t.bigint "neighborhoods_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighborhoods_id"], name: "index_n_nets_on_neighborhoods_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.bigint "localities_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["localities_id"], name: "index_neighborhoods_on_localities_id"
  end

  create_table "risk_levels", force: :cascade do |t|
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "support_nets", force: :cascade do |t|
    t.bigint "nets_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nets_id"], name: "index_support_nets_on_nets_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "names"
    t.string "surnames"
    t.bigint "identification_types_id"
    t.string "identificationnumber"
    t.string "cellphonenumber"
    t.string "username"
    t.string "password"
    t.string "password_digest"
    t.bigint "support_nets_id"
    t.integer "active"
    t.integer "locked"
    t.binary "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identification_types_id"], name: "index_users_on_identification_types_id"
    t.index ["support_nets_id"], name: "index_users_on_support_nets_id"
  end

  add_foreign_key "incident_types", "risk_levels", column: "risk_levels_id"
  add_foreign_key "incidents", "incident_types", column: "incident_types_id"
  add_foreign_key "incidents", "users", column: "users_id"
  add_foreign_key "kiddles", "neighborhoods", column: "neighborhoods_id"
  add_foreign_key "n_nets", "neighborhoods", column: "neighborhoods_id"
  add_foreign_key "neighborhoods", "localities", column: "localities_id"
  add_foreign_key "users", "identification_types", column: "identification_types_id"
  add_foreign_key "users", "support_nets", column: "support_nets_id"
end
