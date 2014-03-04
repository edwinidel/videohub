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

ActiveRecord::Schema.define(:version => 20140304010927) do

  create_table "actores", :force => true do |t|
    t.string   "cNombre"
    t.string   "cApellido"
    t.date     "dNacim"
    t.string   "cPais"
    t.string   "cFoto"
    t.string   "cWeb"
    t.string   "cTwetter"
    t.string   "cFacebook"
    t.string   "sSexo"
    t.text     "cComenta"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "peliculas", :force => true do |t|
    t.string   "cnombre"
    t.string   "cgenero"
    t.string   "cyear"
    t.string   "cclasif"
    t.string   "cdirector"
    t.string   "cproductora"
    t.string   "cactor01"
    t.string   "cactor02"
    t.string   "cactor03"
    t.string   "cactor04"
    t.string   "cactor05"
    t.string   "cactor06"
    t.string   "cactor07"
    t.string   "cactor08"
    t.string   "cactor09"
    t.string   "cactor10"
    t.string   "cubicacion"
    t.string   "ccaratula"
    t.text     "csinopcis"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
