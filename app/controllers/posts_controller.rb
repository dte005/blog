class PostsController < ApplicationController
  before_action :find_post, only: %i[show destroy edit update]
  def index
    params[:filter].blank? ? @posts = Post.all : @posts = Post.where("titulo LIKE ?", "%#{params[:filter]}%")
  end

  def show
    @rating = Rating.new
    @answer = Answer.new
    #@answer_filtred = @post.answers.order(:created_at)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    else
      redirect_to posts_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:titulo, :description)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
