class ApplicationController < ActionController::Base
  include ApplicationHelper

  def current_month
    months_of_year[Date.current.month - 1]
  end
end
