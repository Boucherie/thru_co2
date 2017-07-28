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
    @user = User.where(params[:name])
  end

  def addToTeam
    @user = User.where(params[:name])
    @user.team_id = Team.find(params[:id])
  end

  def team_params
    {name: params[:team][:name]}
  end


end
