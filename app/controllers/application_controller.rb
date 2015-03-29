class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :get_categories
  
  def get_categories
    @categories = Category.all
    category = Category.find_by_name(params[:id])
    @category_id = category.id if category.present?
  end
end
