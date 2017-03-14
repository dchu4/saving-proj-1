class ContactsController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle
  before_action :authenticate_admin!, only: [:index, :show, :destroy]

  def index
    @contacts = Contact.all.order("id ASC")
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ParamountMailer.contact_email(@contact).deliver_now
      flash[:notice] = "Thank you! We will respond promptly."
      redirect_to '/pages/contact'
    else
      flash[:alert] = "Please include a name, valid email address, and message."
      redirect_to '/pages/contact'
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def destroy
    contact = Contact.find(params[:id])

    if contact.destroy
      flash[:notice] = "Delete Successful"
      redirect_to '/contacts'
    else
      flash[:alert] = "Delete failed"
      redirect_to '/contacts'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :email, :message)
  end
end
