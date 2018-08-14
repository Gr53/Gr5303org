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

ActiveRecord::Schema.define(version: 2018_08_14_133635) do

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
    t.integer "risklevels_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["risklevels_id"], name: "index_incident_types_on_risklevels_id"
  end

  create_table "incidents", force: :cascade do |t|
    t.integer "users_id"
    t.string "latitude"
    t.string "longitude"
    t.datetime "fecha"
    t.integer "incidenttypes_id"
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
    t.index ["incidenttypes_id"], name: "index_incidents_on_incidenttypes_id"
    t.index ["users_id"], name: "index_incidents_on_users_id"
  end

  create_table "localities", force: :cascade do |t|
    t.integer "citys_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["citys_id"], name: "index_localities_on_citys_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.integer "localitys_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["localitys_id"], name: "index_neighborhoods_on_localitys_id"
  end

  create_table "nets", force: :cascade do |t|
    t.integer "neighborhoods_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighborhoods_id"], name: "index_nets_on_neighborhoods_id"
  end

  create_table "risk_levels", force: :cascade do |t|
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "support_nets", force: :cascade do |t|
    t.integer "nets_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nets_id"], name: "index_support_nets_on_nets_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "names"
    t.string "surnames"
    t.integer "identificationtypes_id"
    t.string "identificationnumber"
    t.string "cellphonenumber"
    t.string "username"
    t.string "password"
    t.string "password_digest"
    t.integer "supportnets_id"
    t.integer "active"
    t.integer "locked"
    t.binary "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identificationtypes_id"], name: "index_users_on_identificationtypes_id"
    t.index ["supportnets_id"], name: "index_users_on_supportnets_id"
  end

end
