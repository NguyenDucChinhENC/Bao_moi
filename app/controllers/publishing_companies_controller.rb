class PublishingCompaniesController < ApplicationController
  def show
    @publishing_company = PublishingCompany.find_by id: params[:id]
    if @publishing_company
      @books = @publishing_company.books.select(:id, :category_id, :name, :price,
        :quantity, :picture).paginate page: params[:page]
    else
      flash[:danger] = t ".flash.not_found"
      redirect_to root_path
    end
  end
end
