class SessionsController < ApplicationController
  def new
  end

  def Create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged In!"
    else
      flash.now[:alert] = ["Login faild, email and/or password are incorrect!"]
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged Out!"
  end
end
