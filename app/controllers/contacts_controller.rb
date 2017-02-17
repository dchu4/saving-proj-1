class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to '/pages/contact'
    else
      flash[:alert] = "Someting went wrong"
      redirect_to '/pages/contact'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :email, :message)
  end
end
