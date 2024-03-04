class DashboardController < ApplicationController
  before_action :set_month,
    :build_query,
    :set_build_accepts_nested_attributes_for

  def index; end

  private

  def build_query
    @view = params[:view]
    @tags_finance_transactions = FinanceTransaction.per_month(@month)

    @tags_finance_transactions.by_tags if @view.present? && @view == 'tag'
  end

  def set_build_accepts_nested_attributes_for
    @finance_transaction = FinanceTransaction.new.tap do |ft|
      ft.tags_finance_transactions.build
      ft.payers_finance_transactions.build
    end
  end
end
