class DashboardController < ApplicationController
  def index
    @finance_transactions = FinanceTransaction.includes(:payers, :groups)
  end
end
