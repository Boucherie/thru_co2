class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to calculators_path
    else
      flash.now[:alert] = "Login failed, email and/or password are incorrect!"
      render :template => "users/index"
      # redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_show_url
  end
end
