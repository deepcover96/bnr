class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :login

  private
  
  def login
  	# the instructor used session[:logged_in] = true as an alternative
    authenticate_or_request_with_http_basic do |username, password|
        username == "user" && password == "abc123"
    end
  end
end
