class TeamsController < ApplicationController
  def index
    @teams = Team.all.order(name: :asc)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams/show
    else
      flash.now[:alert] = @team.errors.full_messages
      render :new
    end
  end


  def show
    @team = Team.find(params[:id])
    @scores = Score.find(params[:id])
    @team_average = team_ave
    @user = current_user
    # User.addToTeam
  end

  def team_params
    {name: params[:team][:name]}
  end

  def team_ave
      sum = 0
      @team.scores.all.each do |score|
        sum += score[:score]
      end
      ave = (@team.scores.all.length == 0) ? 0 : sum / @team.scores.all.length
      @team.team_score = ave

  end


end
