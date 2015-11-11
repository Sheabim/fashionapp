class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :get_user

  private

  def get_user
  	if user_signed_in?
  		@user = current_user
  	else
  		@user = User.find_by(email: 'guest@example.com')
  	end
  end
end
