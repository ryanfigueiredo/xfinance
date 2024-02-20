class DashboardController < ApplicationController
  def index
    @finance_transactions = FinanceTransaction.includes(:payers, :origin)
  end
end
