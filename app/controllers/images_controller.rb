class ImagesController < ApplicationController
  before_action :authenticate_admin!, only: [:create, :update, :destroy]

  def create
    @image = Image.new(image_params)

    if @image.save
      redirect_to '/pages/admin_dashboard'
    else
      redirect_to '/pages/admin_dashboard'
    end
  end

  def update
    @image = Image.find(params[:id])

    if @image.update(image_params)
      redirect_to '/pages/admin_dashboard'
    else
      redirect_to '/pages/admin_dashboard'
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
