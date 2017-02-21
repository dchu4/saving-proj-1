include CareersHelper

class CareersController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle

  def index
  end

  def new
    @career = Career.new
    @us_states = us_states
  end

  def create
    @career = Career.new(career_params)
    
    if @career.save
      ParamountMailer.job_application_email(@career).deliver_now
      redirect_to '/careers/thank_you'
    else
      render :new
    end
  end

  def show
  end

  def destroy
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
