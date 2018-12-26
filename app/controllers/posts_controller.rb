class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: current_user&.id)
    render json: @posts, status: 200
  end

  def create
  end

  def destroy
  end
end
