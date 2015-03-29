class CategoriesController < ApplicationController
  def show
    category_id = Category.find_by_name(params[:id]).id
    @books = Book.where(category_id: category_id).order(:name).page params[:page]
  end
end