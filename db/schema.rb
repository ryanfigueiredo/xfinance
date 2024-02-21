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

ActiveRecord::Schema[7.1].define(version: 2024_02_21_155935) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "finance_transactions", force: :cascade do |t|
    t.integer "kind", default: 0
    t.string "title", null: false
    t.date "purchase_date"
    t.string "installments", default: "cash"
    t.decimal "real_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "payment_date"
  end

  create_table "groups", force: :cascade do |t|
    t.string "title", null: false
    t.string "payment_day"
    t.string "close_day"
    t.integer "kind", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_finance_transactions", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.bigint "finance_transaction_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "year"
    t.string "month"
    t.index ["finance_transaction_id"], name: "index_groups_finance_transactions_on_finance_transaction_id"
    t.index ["group_id"], name: "index_groups_finance_transactions_on_group_id"
  end

  create_table "payers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payers_finance_transactions", force: :cascade do |t|
    t.bigint "payer_id", null: false
    t.bigint "finance_transaction_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["finance_transaction_id"], name: "index_payers_finance_transactions_on_finance_transaction_id"
    t.index ["payer_id"], name: "index_payers_finance_transactions_on_payer_id"
  end

  add_foreign_key "groups_finance_transactions", "finance_transactions"
  add_foreign_key "groups_finance_transactions", "groups"
  add_foreign_key "payers_finance_transactions", "finance_transactions"
  add_foreign_key "payers_finance_transactions", "payers"
end
