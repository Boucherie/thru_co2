class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:alert] = @user.errors.full_messages
      render :new
    end
  end

  def update
    # distanceInKilometers
    # emissions
    # score
    # add data to strong params, pass user_id from view with AJAX (render on page or pass w params from JS)
    redirect_to root_path

  end

  def index
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
