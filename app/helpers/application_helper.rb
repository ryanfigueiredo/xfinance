module ApplicationHelper
  def current_month
    params[:month].present? ? params[:month] : months_of_year[Date.current.month - 1]
  end

  def path_month2(month)
    if request.path == '/'
      "dashboard?month=#{month}"
    else
      "#{request.path}?month=#{month}"
    end
  end

  def months_of_year
    [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ]
  end

  def sum_total_transactions(finance_transactions)
    finance_transactions.sum{ |ft| ft.revenue? ? ft.real_amount : -ft.real_amount }
  end

  def finance_transaction_kinds
    FinanceTransaction.kinds.map{ |ft_text, ft_id| [ft_text, ft_text] }
  end

  def data_finance_transaction_params(finance_transaction)
    finance_transaction_params = {
      controller: "dashboard",
      action: "click->dashboard#toggleFilterAddTableFinanceTransactionsEdit",
      "dashboard-hidden-param" => "false",
      "dashboard-payers-finance-transaction-id-param" => finance_transaction.payers_finance_transactions.first.id,
      "dashboard-payer-id-param" => finance_transaction.payers.first.id,
      "dashboard-groups-finance-transaction-id-param" => finance_transaction.groups_finance_transactions.first.id,
      "dashboard-group-id-param" => finance_transaction.groups.first.id
    }

    finance_transaction.attributes.except("created_at", "updated_at").each do |f_transaction_attribute_key, f_transaction_attribute_value|
      finance_transaction_params["dashboard-#{f_transaction_attribute_key}-param"] = "#{f_transaction_attribute_value}"
    end

    finance_transaction_params
  end
end
