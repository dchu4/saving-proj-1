class ToursController < ApplicationController
  def index
    @tours = Tour.all
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)

    if @tour.save
      ParamountMailer.tour_email(@tour).deliver_now
      redirect_to '/tours/thank_you'
    else
      render :new
    end
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    tour = Tour.find(params[:id])

    tour.destroy

    #redirect to admin panel
  end

  def thank_you
  end

  def tour_params
    params.require(:tour).permit(
      :first_name,
      :email,
      :tour_date,
      :tour_time
      )
  end
end
