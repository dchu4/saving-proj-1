class ToursController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle
  before_action :authenticate_admin!, only: [:index, :delete]

  def index
    @tours = Tour.all.order("id ASC")
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
      flash[:alert] = "Please include a name, valid email address, date, and time."
      render :new
    end
  end

  def destroy
    tour = Tour.find(params[:id])

    tour.destroy

    render :index
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
