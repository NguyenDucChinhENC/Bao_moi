class BooksController < ApplicationController
  def index
    @books = Book.paginate page: params[:page]
  end

  def show
    @book = Book.find_by id: params[:id]
    @comment = current_user.comment.build if logged_in?
    if @book
      @comments = @book.comments.newest.paginate page: params[:page]

    else
      flash[:danger] = t ".flash.not_found"
      redirect_to root_path
    end
  end
end
