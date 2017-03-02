class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)

    if @video.save
      render :new
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
      :video_caption
      )
  end
end
