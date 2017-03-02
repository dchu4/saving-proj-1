class ImagesController < ApplicationController
  def index
    @images = Image.all
    # gon.images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create(image_params)

    if @post.save
      render :new
    else
      render :new
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

  def image_params
    params.require(:image).permit(
      :post_source,
      :post_type,
      :post_caption
      )
  end
end
