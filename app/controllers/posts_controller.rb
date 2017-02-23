class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.create(post_params)

    if @post.save

    else

    end
  end

  def show
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
  end

  def destroy
    post = Post.find(params[:id])

    post.destroy
  end

  def post_params
    params.require(:post).permit(
      :post_source,
      :post_type,
      :post_caption
      )
  end
end
