class ToursController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle

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
      flash[:notice] = "Thank you for booking a tour! We will respond promptly."
      redirect_to '/tours/new'
    else
      flash[:alert] = "Please include a name, valid email address, date, and time."
      redirect_to '/tours/new'
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
