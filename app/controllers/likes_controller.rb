class LikesController < ApplicationController
  def index
    @likes = Like.all
  end

  def new
  end

  def create
    @like = Like.new
    @like.title = params[:input_title]
    @like.content = params[:input_content]
    @like.save

    redirect_to "/"
  end

  def show
    @like = Like.find(params[:like_id])
    @lions = Lion.where(:like_id => params[:like_id])
  end

  def edit
    @like = Like.find(params[:like_id])
  end

  def update
    @like = Like.find(params[:like_id])
    @like.title = params[:edit_title]
    @like.content = params[:edit_content]
    @like.save

    redirect_to likes_show_path
  end

  def destroy
    @like = Like.find(params[:like_id])
    @like.destroy

    redirect_to "/"
  end
end
