class LionsController < ApplicationController
  def create
    @lion = Lion.new
    @lion.content = params[:lion_content]
    @lion.like_id = params[:like_id]
    @lion.save

    redirect_to likes_show_path
  end

  def destroy
    @lion = Lion.find(params[:lion_id])
    @lion.destroy

    redirect_to likes_show_path
  end
end
