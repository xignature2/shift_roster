class PostsController < ApplicationController

  def index
    @users = User.all
    @posts = Post.all
    @posts = Post.includes(:images)
    # @user = User.find(params[:user_id])
  end

  def new
    if user_signed_in?
      @post = Post.new
      @post.images.new
    else
      redirect_to new_user_session_path
    end
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save!
      redirect_to root_path
    else
      redirect_to  new_post_path
    end
  end

  def show
  end

  def edit
    @post = Post.find(params[:id])
    if user_signed_in? && current_user.id
  end
end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, images_attributes: [:image_url, :_destroy, :id]).merge(user_id: current_user.id)
  end

end
