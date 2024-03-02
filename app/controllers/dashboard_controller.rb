class DashboardController < ApplicationController
  before_action :set_month,
    :build_query,
    :set_build_accepts_nested_attributes_for

  def index; end

  private

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

  def set_build_accepts_nested_attributes_for
    @finance_transaction = FinanceTransaction.new.tap do |ft|
      ft.groups_finance_transactions.build
      ft.payers_finance_transactions.build
    end
  end
end
