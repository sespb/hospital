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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111114144053) do

  create_table "gerencias", :force => true do |t|
    t.string   "codigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospitais", :force => true do |t|
    t.integer  "municipio_id"
    t.string   "situacao"
    t.string   "cnes"
    t.string   "condicao_funcionamento"
    t.string   "ativ_adm"
    t.integer  "medicos"
    t.integer  "populacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
  end

  add_index "hospitais", ["municipio_id"], :name => "index_hospitais_on_municipio_id"

  create_table "leitos", :force => true do |t|
    t.integer  "cl"
    t.integer  "cir"
    t.integer  "obs"
    t.integer  "ped"
    t.integer  "uti"
    t.integer  "uti_neo"
    t.integer  "isol"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leitos", ["hospital_id"], :name => "index_leitos_on_hospital_id"

  create_table "macros", :force => true do |t|
    t.string   "codigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipios", :force => true do |t|
    t.integer  "macro_id"
    t.integer  "gerencia_id"
    t.string   "nome"
    t.string   "cod_geo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "municipios", ["gerencia_id"], :name => "index_municipios_on_gerencia_id"
  add_index "municipios", ["macro_id"], :name => "index_municipios_on_macro_id"

end
