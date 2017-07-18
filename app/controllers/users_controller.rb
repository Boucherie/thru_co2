class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def Create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:alert] = @user.errors.full_messages
      render :new
    end
  end

  def show
    unless current_user
      flash[:alert] = ["Must be logged in to view this account!"]
      redirect_to root_path
      return
    end
    @user = User.find(params[:id])

  end

  def user_params
    {email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation]}
  end

  
end
