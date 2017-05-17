class BooksController < ApplicationController
  def index
    @books = Book.paginate page: params[:page]
  end

  def show
    @book = Book.find_by id: params[:id]
    unless @book
      flash[:danger] = t ".flash.not_found"
      redirect_to root_path
    end
  end
end
