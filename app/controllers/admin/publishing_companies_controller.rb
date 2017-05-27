class Admin::PublishingCompaniesController < ApplicationController
  before_action :logged_in_user
  before_action :require_admin

  def index
    @publishing_companies = PublishingCompany.select(:id,
      :name, :info).order(:name).paginate page: params[:page]
  end

  def new
    @publishing_company = PublishingCompany.new
  end

  def create
    @publishing_company = PublishingCompany.new publishing_company_params
    if @publishing_company.save
      flash[:success] = t ".flash.add_done"
      redirect_to admin_publishing_companies_path
    else
      render :new
    end
  end

  def show
    @publishing_company = PublishingCompany.find_by id: params[:id]
    unless @publishing_company
      flash[:danger] = t ".flash.not_found"
      redirect_to root_path
    end
  end

  private

  def publishing_company_params
    params.require(:publishing_company).permit :name, :info
  end
end
