class ImagesController < ApplicationController
  def index
    @images = Image.all
    # gon.images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      redirect_to '/pages/admin_dashboard'
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
      :image_source,
      :image_title,
      :image_caption
      )
  end
end
