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

ActiveRecord::Schema.define(version: 20160809003206) do

  create_table "feedbacks", force: :cascade do |t|
    t.text     "description",    limit: 65535
    t.integer  "score",          limit: 4
    t.integer  "reservation_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "feedbacks", ["reservation_id"], name: "index_feedbacks_on_reservation_id", using: :btree

  create_table "nearbies", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "parkinglots", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "address",             limit: 255
    t.string   "addressreference",    limit: 255
    t.decimal  "pricinghour",                       precision: 10
    t.decimal  "pricingday",                        precision: 10
    t.text     "businesshours",       limit: 65535
    t.boolean  "camera"
    t.boolean  "security"
    t.integer  "user_id",             limit: 4
    t.integer  "ubigeo_id",           limit: 4
    t.integer  "nearby_id",           limit: 4
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "parkinglots", ["nearby_id"], name: "index_parkinglots_on_nearby_id", using: :btree
  add_index "parkinglots", ["ubigeo_id"], name: "index_parkinglots_on_ubigeo_id", using: :btree
  add_index "parkinglots", ["user_id"], name: "index_parkinglots_on_user_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.datetime "born_at"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.date     "datestart"
    t.time     "timestart"
    t.date     "dateend"
    t.time     "timeend"
    t.boolean  "byhour"
    t.boolean  "byday"
    t.integer  "parkinglot_id", limit: 4
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "reservations", ["parkinglot_id"], name: "index_reservations_on_parkinglot_id", using: :btree
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "special_features", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "ubigeos", force: :cascade do |t|
    t.string   "district",   limit: 255
    t.string   "department", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "userinteractions", force: :cascade do |t|
    t.text     "question",      limit: 65535
    t.text     "answer",        limit: 65535
    t.integer  "parkinglot_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "userinteractions", ["parkinglot_id"], name: "index_userinteractions_on_parkinglot_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role",                   limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "feedbacks", "reservations"
  add_foreign_key "parkinglots", "nearbies"
  add_foreign_key "parkinglots", "ubigeos"
  add_foreign_key "parkinglots", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "reservations", "parkinglots"
  add_foreign_key "reservations", "users"
  add_foreign_key "userinteractions", "parkinglots"
end
