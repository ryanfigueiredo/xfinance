class DashboardController < ApplicationController
  def index
    @account_transactions = AccountTransaction.includes(:payers, :origin)
  end
end
