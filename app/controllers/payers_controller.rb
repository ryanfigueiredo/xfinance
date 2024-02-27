class PayersController < ApplicationController
  before_action :set_month
  
  def index
    @payers = Payer.includes(finance_transactions: :groups_finance_transactions).where(groups_finance_transactions: { month: @month })
  end
end