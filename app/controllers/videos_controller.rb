class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    vp = video_params
    video_source = vp[:video_source]
    vp[:video_source] = "https://www.youtube.com/embed/#{video_source[32,video_source.length-1]}"
    video_params = vp

    @video = Video.new(video_params)

    if @video.save
      redirect_to '/pages/admin_dashboard'
    else
      render :new
    end
  end

  def show
    @video = Video.find(params[:id])
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])

    if @video.update(video_params)
      render :show
    else
      render :edit
    end
  end

  def destroy
    video = Video.find(params[:id])

    video.destroy

    render :index #change to flash message
  end

  def video_params
    params.require(:video).permit(
      :video_source,
      :video_caption,
      :video_title
      )
  end
end
