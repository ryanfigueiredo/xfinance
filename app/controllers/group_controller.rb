class GroupController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    group = Group.find(params[:id])

    if group.title == 'Despesas'
      @finance_transactions = FinanceTransaction.includes(:payers).where(kind: :expense)
    elsif group.title == 'Receitas'
      @finance_transactions = FinanceTransaction.includes(:payers).where(kind: :revenue)
    else
      @finance_transactions = group.finance_transactions.includes(:payers)
    end
  end
end
