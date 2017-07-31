class ScoresController < ApplicationController
  def create
    @user = User.find(params[:id])
    @score = @user.score.create(score_params)
    if @score.save
      flash[:notice] = "Score Saved!"
      redirect_to 'users/show'
      puts "Posted"
    else
      render 'calculators'
    end
  end

  def score_params
    params.permit(:distanceInKilometers, :score)
  end
end
