class TeamsController < ApplicationController
  def index
    @teams = Team.all.order(name: :asc)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
  end

  def show
  end

  def team_params
    {name: params[:team][:name]}
  end
end
