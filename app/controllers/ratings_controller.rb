class RatingsController < ApplicationController

  def new
    @rating = Rating.new
  end

  def create
    post = Post.find(params[:post_id])
    @rating = Rating.new(rating_params)
    @rating.post = post
    if @rating.save
      redirect_to post_path(post)
    else
      redirect_to post_path(post)
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:star, :description)
  end

end
