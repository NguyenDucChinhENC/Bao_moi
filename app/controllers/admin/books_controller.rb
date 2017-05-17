class Admin::BooksController < ApplicationController
  before_action :check_login
  before_action :require_admin

  def index
    @books = Book.select(:id, :name, :quantity).order(:name).paginate page: params[:page]
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new book_params
    if @book.save
      flash[:success] = t ".flash.add_done"
      redirect_to @book
    else
      render :new
    end
  end

  def show
    @book = Book.find_by id: params[:id]
    unless @book
      flash[:danger] = t ".flash.not_found"
      redirect_to root_path
    end
  end

  private

  def book_params
    params.require(:book).permit :name, :category_id, :publishing_company_id,
      :price, :summary, :quantity, :picture
  end
end
