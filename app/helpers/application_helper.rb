module ApplicationHelper
  def current_month
    months = months_of_year

    params[:month].present? ? params[:month] : months[Date.current.month - 1]
  end

  def path_month(month)
    current_month.include?(request.path.split('/').last) ? build_path_by(request.path, month) : "#{request.path}/#{month}"
  end

  def build_path_by(path, month)
    path_splitted = path.split('/')
    path_splitted.delete_at(-1)
    path_splitted.push(month)
    path_splitted.join('/')
  end

  def months_of_year
    [
      'January',
      'Febuary',
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
