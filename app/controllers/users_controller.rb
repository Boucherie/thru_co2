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

  def index
  end

  def show

    @user = User.find(params[:id])

    @user_average = user_ave

  end

  def user_params
    {email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation]}
  end


  def user_ave
    sum = 0
    @user.scores.all.each do |score|
      sum += score[:score]
    end
    ave = sum / @user.scores.all.length
  end


end
