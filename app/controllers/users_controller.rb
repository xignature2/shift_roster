class UsersController < ApplicationController

  def index
    @posts = Post.includes(:images).order('created_at DESC')
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

  def destroy
  end

 
  # private

  # def user_params
  #   params.require(:user).permit(:name, :email, :passward)
  # end

end
