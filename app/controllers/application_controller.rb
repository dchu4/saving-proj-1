class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  private

  def authenticate_admin!
    unless user_signed_in? && current_user.admin
      redirect_to '/'
    end
  end
  
end
