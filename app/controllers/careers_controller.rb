include CareersHelper

class CareersController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle
  before_action :authenticate_admin!, only: [:index, :show, :delete]

  def index
    @careers = Career.all.order("id ASC")
  end

  def new
    @career = Career.new
  end

  def create
    @career = Career.new(career_params)
    
    if @career.save
      ParamountMailer.job_application_email(@career).deliver_now
      redirect_to '/careers/thank_you'
    else
      flash[:alert] = @career.errors.full_messages.join(", ")
      render :new
    end
  end

  def show
    @career = Career.find(params[:id])
  end

  def destroy
    career = Career.find(params[:id])

    if career.destroy
      redirect_to "/careers"
    else
      redirect_to "/careers"
    end
  end

  def thank_you
  end

  private

  def career_params
    params.require(:career).permit(
      :first_name, 
      :last_name, 
      :middle_name, 
      :phone_number, 
      :email, 
      :street_address, 
      :apt_number, 
      :city, 
      :state, 
      :country, 
      :zip_code, 
      :job_role, 
      :resume,
      :referral
      )
  end
end
