class CreateOrigins < ActiveRecord::Migration[7.1]
  def change
    create_table :origins do |t|
      t.string :title, null: false
      t.date :payment_date
      t.references :account_transaction, null: false, foreign_key: true

      t.timestamps
    end

    add_index :origins, [:title, :account_transaction_id], unique: true
  end
end
