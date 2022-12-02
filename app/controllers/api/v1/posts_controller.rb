class Api::V1::PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts, status: 200
  end

  def show
    post = Post.find_by(id: params[:id])
    if post
      render json: post, status: 200
    else
      render json: {error: "Not found."}
    end
  end

  def create
    post = Post.new(title: post_params[:title], description: post_params[:description])
    if post.save
      render json: post, status: 200
    else
      render json: {error: "Not Created."}
    end
  end

  private
  def post_params
    params.require(:post).permit([:title, :description])
  end
end
