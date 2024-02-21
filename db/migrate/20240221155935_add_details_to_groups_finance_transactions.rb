class AddDetailsToGroupsFinanceTransactions < ActiveRecord::Migration[7.1]
  def change
    add_column :groups_finance_transactions, :year, :string
    add_column :groups_finance_transactions, :month, :string
  end
end
