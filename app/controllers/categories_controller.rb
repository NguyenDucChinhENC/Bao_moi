class CategoriesController < ApplicationController
  def show
    @category = Category.find_by id: params[:id]
    if @category
      @books = @category.books.select(:id, :category_id, :name, :price,
        :quantity, :picture).paginate page: params[:page]
    else
      flash[:danger] = t ".flash.not_found"
      redirect_to root_path
    end
  end
end
