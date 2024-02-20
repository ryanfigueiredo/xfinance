class CreateGroupsFinanceTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :groups_finance_transactions do |t|
      t.references :group, null: false, foreign_key: true
      t.references :finance_transaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
