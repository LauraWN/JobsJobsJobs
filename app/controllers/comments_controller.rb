class CommentsController < ApplicationController

#index page
  def index
    @comments = Comment.all
  end

#new page
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

#create
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create!(comment_params.merge(artist: @artist))
    redirect_to post_song_path(@post, @comment)
  end

  #show page
  def show
    @comment = Comment.find(params[:id])
  end

  #edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment.update(song_params.merge(post: @post))
    redirect_to post_comment_path(@comment.post, @comment)
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :content, :post_id)
  end

end
