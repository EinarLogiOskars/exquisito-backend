class Api::V1::CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    comment = Comment.where("review_id = ?", params[:review_id])
    render json: comment
  end

  def create
    comment = Comment.create(comment_params)
    if comment.save
      render json: comment
    else
      render json: comment.errors
    end
  end

  def show
  end

  def destroy
  end

  private
    def comment_params
      params.permit(:commenter, :comment_body, :user_id, :review_id)
    end
end
