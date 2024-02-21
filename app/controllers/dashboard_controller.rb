class DashboardController < ApplicationController
  before_action :set_month, :build_query

  def index; end

  private

  def set_month
    @month = params[:month].present? ? params[:month].downcase : current_month.downcase
  end

  def build_query
    @finance_transactions = FinanceTransaction.includes(:payers, :groups)
                                              .joins(:groups_finance_transactions)
                                              .where(groups_finance_transactions: { month: @month })
  end
end
