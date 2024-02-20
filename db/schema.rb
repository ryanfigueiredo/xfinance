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

ActiveRecord::Schema[7.1].define(version: 2024_02_19_235312) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_transactions", force: :cascade do |t|
    t.integer "kind", default: 0, null: false
    t.string "title", null: false
    t.date "purchase_date", null: false
    t.string "installments", default: "Cash"
    t.date "due_date"
    t.decimal "fake_amount"
    t.decimal "real_amount", null: false
    t.bigint "origin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["origin_id"], name: "index_account_transactions_on_origin_id"
  end

  create_table "origins", force: :cascade do |t|
    t.string "title", null: false
    t.date "payment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "close_day"
    t.integer "kind", default: 0, null: false
  end

  create_table "payers", force: :cascade do |t|
    t.string "name"
    t.bigint "account_transaction_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_transaction_id"], name: "index_payers_on_account_transaction_id"
    t.index ["name", "account_transaction_id"], name: "index_payers_on_name_and_account_transaction_id", unique: true
  end

  add_foreign_key "account_transactions", "origins"
  add_foreign_key "payers", "account_transactions"
end
