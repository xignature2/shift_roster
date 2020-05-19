class PostsController < ApplicationController

  def new
    @post = Post.new()
    @post.images.build
  end

  def creat
    @post = Post.new(product_params)
    if @post.save
      redirect_to root_path
    else
      redirect_to new_product_path
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:post).permit(:name, :price, images_attributes: [:image_url, :_destroy, :id])
  end

end
