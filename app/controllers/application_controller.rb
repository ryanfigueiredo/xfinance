class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_action :set_existing_groups

  def set_month
    @month = params[:month].present? ? params[:month].downcase : current_month.downcase
  end

  def set_existing_groups
    @groups = Group.pluck(:title, :id)
  end
end
