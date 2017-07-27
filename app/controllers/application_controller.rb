class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout "map", only: [:index]

  private

  def current_user
  session[:user_id] && User.find(session[:user_id])
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
end
