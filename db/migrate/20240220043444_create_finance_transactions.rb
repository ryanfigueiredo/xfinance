class CreateFinanceTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :finance_transactions do |t|
      t.integer :kind, default: 0
      t.string :title, null: false
      t.date :purchase_date
      t.string :installments, default: 'cash'
      t.decimal :real_amount

      t.timestamps
    end
  end
end
