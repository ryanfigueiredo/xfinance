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
end
