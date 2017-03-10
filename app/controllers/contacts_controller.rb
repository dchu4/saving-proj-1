class ContactsController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
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

  def delete
    contact = Contact.find(params[:id])

    if contact.destroy
      flash[:notice] = "Delete Successful"
      render :index
    else
      flash[:alert] = "Delete failed"
      render :index
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :email, :message)
  end
end
