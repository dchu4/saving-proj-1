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
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])

    if @image.update(image_params)
      redirect_to '/pages/admin_dashboard'
    else
      render :new
    end
  end

  def destroy
    image = Image.find(params[:id])

    image.destroy

    redirect_to '/pages/admin_dashboard'
  end

  def image_params
    params.require(:image).permit(
      :image_source,
      :image_title,
      :image_caption
      )
  end
end
