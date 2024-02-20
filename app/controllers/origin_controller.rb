class OriginController < ApplicationController
  def index
    @origins = Origin.all
  end

  def show
    origin = Origin.find(params[:id])
    @finance_transactions = origin.finance_transactions.includes(:payers)
  end
end