class UsersController < ApplicationController

  def index
    @users = User.all
    # @user = User.find(params[:user_id])
    # @posts = Post.includes(:images).order('created_at DESC')
  end

  def new
  end

  def creat
  end

  def show
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
