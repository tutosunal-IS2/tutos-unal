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

ActiveRecord::Schema.define(version: 20160910224719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archivos", force: :cascade do |t|
    t.string   "path"
    t.string   "tipo"
    t.integer  "tamaño"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.string   "contenido"
    t.datetime "date"
    t.integer  "voto"
    t.integer  "Tutor_idTutor"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dia", force: :cascade do |t|
    t.date     "hora_inicio"
    t.date     "hora_final"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "plan_de_estudios"
    t.integer  "semestre"
    t.boolean  "bloqueo"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "users_id"
    t.index ["users_id"], name: "index_estudiantes_on_users_id", using: :btree
  end

  create_table "horarios", force: :cascade do |t|
    t.string   "lugar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programacion_de_atencions", force: :cascade do |t|
    t.datetime "hora_inicio"
    t.datetime "hora_final"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tutoria", force: :cascade do |t|
    t.string   "asignatura"
    t.datetime "horario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutors", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "users_id"
    t.index ["users_id"], name: "index_tutors_on_users_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "estudiantes", "users", column: "users_id"
  add_foreign_key "tutors", "users", column: "users_id"
end
