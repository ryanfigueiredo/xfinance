class PayersController < ApplicationController
  before_action :set_month

  def index
    @payers = Payer.includes(:finance_transactions).where(finance_transactions: { month: @month })
  end
end