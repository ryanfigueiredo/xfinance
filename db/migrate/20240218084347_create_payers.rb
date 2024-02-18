class CreatePayers < ActiveRecord::Migration[7.1]
  def change
    create_table :payers do |t|
      t.string :name
      t.references :account_transaction, null: false, foreign_key: true

      t.timestamps
    end

    add_index :payers, [:name, :account_transaction_id], unique: true
  end
end
