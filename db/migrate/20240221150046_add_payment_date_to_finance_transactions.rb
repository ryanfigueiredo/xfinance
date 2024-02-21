class AddPaymentDateToFinanceTransactions < ActiveRecord::Migration[7.1]
  def change
    add_column :finance_transactions, :payment_date, :date
  end
end
