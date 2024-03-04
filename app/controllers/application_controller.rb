class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_action :set_existing_tags, :set_existing_payers

  def set_month
    @month = params[:month].present? ? params[:month].downcase : current_month.downcase
  end

  def set_existing_tags
    @tags = Tag.pluck(:title, :id)
  end

  def set_existing_payers
    @payers = Payer.pluck(:name, :id)
  end
end
