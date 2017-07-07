class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_admin


  before_action :authenticate_user!
end
