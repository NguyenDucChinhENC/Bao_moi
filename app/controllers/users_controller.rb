class UsersController < ApplicationController
  def show
    @user = User.find_by id: params[:id]
    unless @user
      flash[:danger] = t ".flash.not_found"
      redirect_to root_path
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :birthday, :email, :password,
      :password_confirmation
  end
end
