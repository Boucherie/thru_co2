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
  end

  def addToTeam

    @user.team_id = Team.find(params[:id])
  end

  def team_params
    {name: params[:team][:name]}
  end

  def team_ave
    sum = 0
    count = 0
    Score.all.each do |score|
     if score.user.team_id == @team.id
      count ++
      sum += score[:score]
    end
    ave = (sum == 0) ? 0 : sum / count
  end


end
