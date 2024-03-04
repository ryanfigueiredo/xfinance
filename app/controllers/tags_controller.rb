class TagsController < ApplicationController
  before_action :set_month, :set_tag, :build_query, only: :show

  def index
    @tags = Tag.find_each
  end

  def show; end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def build_query
    initial_query = FinanceTransaction.includes(:payers)

    query = case @tag.title
      when 'Despesas'
        initial_query.where(kind: :expense)
      when 'Receitas'
        initial_query.where(kind: :revenue)
      else
        @tag.finance_transactions
      end

    @finance_transactions = query.where(month: @month)
  end
end
