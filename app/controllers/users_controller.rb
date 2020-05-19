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
  end

  def destroy
  end

end
