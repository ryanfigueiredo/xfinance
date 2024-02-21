class PayerController < ApplicationController
  before_action :set_month
  
  def index
    @payers = Payer.includes(finance_transactions: :groups_finance_transactions).where(groups_finance_transactions: { month: @month })
  end

  private

  def set_month
    @month = params[:month].present? ? params[:month].downcase : current_month.downcase
  end
end