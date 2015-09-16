class PostsController < ApplicationController

#index page
  def index
    @posts = Post.all
  end

#new page
  def new
    @post = Post.new
  end

#create page
  def create
    @post = Post.create!(post_params)
    redirect_to (post_path(@post))
  end

#show page
  def show
    @post = Post.find(params[:id])
  end

#edit page
  def edit
    @post = Post.find(params[:id])
  end

#update page
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  #destroy page
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
