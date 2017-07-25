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
    # score
    # add data to strong params, pass user_id from view with AJAX (render on page or pass w params from JS)
    redirect_to root_path

  end

  def index
  end

  def show
    unless current_user
      flash[:alert] = ["You must be logged in first!"]
      redirect_to root_path
    end
    @user = User.find(params[:id])

    @user_average = user_ave

  end


  def user_ave
    sum = 0
    @user.scores.all.each do |score|
      sum += score[:score]
    end
    ave = sum / @user.scores.all.length
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
