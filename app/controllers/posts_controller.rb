class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params(:title, :description))
    @post.save
    redirect_to post_path(@post)
  end

  def edit
    @post = post_find
  end

  def update
    @post = post_find
    @post.update(post_params(:title, :description))
    redirect_to post_path
  end

  def destroy
    post_find.destroy
    redirect_to posts_path
  end

  def index
    @posts = Post.all
  end

  def show
    @post = post_find
  end

  private

  def post_params(*args)
    params.require(:post).permit(*args)
  end

  def post_find
    Post.find(params[:id])
  end
end
