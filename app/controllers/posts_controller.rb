class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user
    @post.save
    redirect_to post_path
  end

  def index
  end

  def show
  end


  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
