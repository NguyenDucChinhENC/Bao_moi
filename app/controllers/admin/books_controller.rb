class Admin::BooksController < ApplicationController
  before_action :check_login
  before_action :require_admin

  def index
    @books = Book.select(:id, :name, :quantity).order(:name).paginate page: params[:page]
  end
end
