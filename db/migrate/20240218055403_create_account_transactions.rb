class CreateAccountTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :account_transactions do |t|
      t.integer :kind, null: false, default: 0
      t.string :title, null: false
      t.date :purchase_date, null: false
      t.string :installments, default: 'Cash'
      t.date :due_date
      t.decimal :fake_amount
      t.decimal :real_amount, null: false

      t.references :origin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
