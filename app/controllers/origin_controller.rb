class OriginController < ApplicationController
  def index
    @origins = Origin.all
  end

  def show
    origin = Origin.find(params[:id])
    @account_transactions = origin.account_transactions.includes(:payers)
  end
end