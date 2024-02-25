class FinanceTransactionsController < ApplicationController
  def index; end

  def create
    @finance_transaction = FinanceTransaction.build(finance_transaction_params)

    respond_to do |format| #.... WIP
      if @finance_transaction.save
        format.html { redirect_to dashboard_path, notice: 'finance_transaction was successfully created.' }
        format.json { render :show, status: :created, location: @finance_transaction }
      else
        format.html { redirect_to dashboard_path, alert: "finance_transaction not created" }
        format.json { render json: @finance_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def finance_transaction_params
    params.require(:finance_transaction).permit(
      :kind,
      :title,
      :purchase_date,
      :real_amount,
      :installments,
      groups_finance_transactions_attributes: [:group_id]
    )
  end
end
