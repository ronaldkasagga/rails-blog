class PostsController < ApplicationController

  before_action :fetch_post, only: [:edit, :update, :show, :delete]

  def index
    @posts = Post.all
    respond_to do |format|
      format.html
      format.xml { render :xml => @posts }
      format.json { render :json => @posts}
    end
  end

  def new
    @post = Post.new
  end

  def create
    Post.create post_params
    redirect_to posts_path
  end

  def edit
  end

  def update
    @post.update_attributes post_params
    redirect_to post_path post
  end

  def show
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :author)
  end

  def fetch_post
    @post = Post.find params[:id]
  end
end
