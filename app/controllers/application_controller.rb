class ApplicationController < ActionController::Base
	  protect_from_forgery with: :exception
  layout :set_layout
  before_action :authenticate_user!

def set_layout
		user_signed_in? ? "application" : "login"
	end

  
end
