class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def create
    @comment = current_user.comment.build comment_params
    if @comment.save
      flash[:success] = t ".create"
    else
      flash[:success] = t ".not_create"
    end
    redirect_to :back
  end

  def destroy
    @comment.destroy
    flash[:success] = t ".delete"
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit :book_id, :content
  end

  def correct_user
    @comment = current_user.comment.find_by id: params[:id]
    redirect_to :back if @comment.nil?
  end
end
