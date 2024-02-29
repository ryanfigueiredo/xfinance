class GroupsController < ApplicationController
  before_action :set_month, :set_group, :build_query, only: :show

  def index
    @groups = Group.find_each
  end

  def show; end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def build_query
    initial_query = FinanceTransaction.includes(:payers)

    query = case @group.title
      when 'Despesas'
        initial_query.where(kind: :expense)
      when 'Receitas'
        initial_query.where(kind: :revenue)
      else
        @group.finance_transactions
      end

    @finance_transactions = query.joins(:groups_finance_transactions).where(groups_finance_transactions: { month: @month })
  end
end
