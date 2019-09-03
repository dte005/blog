class AnswersController < ApplicationController
  before_action :find_params, only: %i[new create]

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(description: params[:answer][:description])
    @answer.rating = @rating
    if @answer.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private

  def answer_params
    params.require[:answer].permit[:description]
  end

  def find_params
    @post = Post.find(params[:post_id])
    @rating = Rating.find(params[:rating_id])
  end

end
