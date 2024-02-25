class DashboardController < ApplicationController
  before_action :set_month, :build_query

  def index; end

  private

  def set_month
    @month = params[:month].present? ? params[:month].downcase : current_month.downcase
  end

  def build_query
    @view = params[:view]

    if @view.present? && @view == 'group'
      @groups_finance_transactions = FinanceTransaction.per_month(@month).by_groups
    else
      @groups_finance_transactions = FinanceTransaction.includes(:payers, :groups)
                                              .joins(:groups_finance_transactions)
                                              .where(groups_finance_transactions: { month: @month })
    end
  end
end
