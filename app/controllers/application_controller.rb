class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_action :set_existing_groups

  def current_month
    months_of_year[Date.current.month - 1]
  end

  def set_existing_groups
    @groups = Group.pluck(:title, :id)
  end
end
