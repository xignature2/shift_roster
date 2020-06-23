class UsersController < ApplicationController

  def index
    @users = User.all
    @posts = Post.all
    @posts = Post.includes(:images)
  end

  def new
  end

  def creat
  end

  def show
    @name = current_user.name
    @posts = current_user.posts
    # @user = User.find(params[:user_id])
  end
  
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end


end
