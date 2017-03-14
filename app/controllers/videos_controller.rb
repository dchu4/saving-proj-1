class VideosController < ApplicationController
  before_action :authenticate_admin!, only: [:create, :update, :destroy]

  def create
    vp = video_params
    video_source = vp[:video_source]
    if video_source.length > 32
      vp[:video_source] = "https://www.youtube.com/embed/#{video_source[32,video_source.length-1]}"
      video_params = vp
    end

    @video = Video.new(video_params)

    if @video.save
      redirect_to '/pages/admin_dashboard'
    else
      redirect_to '/pages/admin_dashboard'
    end
  end

  def update
    @video = Video.find(params[:id])

    vp = video_params
    video_source = vp[:video_source]
    if video_source.length > 32
      vp[:video_source] = "https://www.youtube.com/embed/#{video_source[32,video_source.length-1]}"
      video_params = vp
    end

    if @video.update(video_params)
      redirect_to '/pages/admin_dashboard'
    else
      redirect_to '/pages/admin_dashboard'
    end
  end

  def destroy
    video = Video.find(params[:id])

    video.destroy

    redirect_to '/pages/admin_dashboard'
  end

  private

  def video_params
    params.require(:video).permit(
      :video_source,
      :video_caption,
      :video_title
      )
  end
end
