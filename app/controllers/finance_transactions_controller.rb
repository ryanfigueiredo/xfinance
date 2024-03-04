class FinanceTransactionsController < ApplicationController
  def index; end

  def create
    finance_transaction = FinanceTransaction.build(finance_transaction_params)

    respond_to do |format|
      if finance_transaction.save
        format.html { redirect_to dashboard_path, notice: 'finance transaction was successfully created.' }
      else
        format.html { redirect_to dashboard_path, alert: finance_transaction.errors.full_messages.to_sentence }
      end
    end
  end

  def destroy
    finance_transaction = FinanceTransaction.find(params[:id])

    respond_to do |format|
      if finance_transaction.destroy
        format.html { redirect_to dashboard_path, notice: 'finance transaction was successfully deleted.' }
      else
        format.html { redirect_to dashboard_path, alert: finance_transaction.errors.full_messages.to_sentence }
      end
    end
  end

  def update
    finance_transaction = FinanceTransaction.find(params[:id])

    respond_to do |format|
      if finance_transaction.update!(finance_transaction_params)
        format.html { redirect_to dashboard_path, notice: 'finance transaction was successfully created.' }
      else
        format.html { redirect_to dashboard_path, alert: finance_transaction.errors.full_messages.to_sentence }
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
      tags_finance_transactions_attributes: [:id, :tag_id],
      payers_finance_transactions_attributes: [:id, :payer_id]
    )
  end
end
