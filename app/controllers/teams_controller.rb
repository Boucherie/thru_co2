class TeamsController < ApplicationController
  def index
    @teams = Team.all.order(name: :asc)
    @team_average = team_ave
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
      @team.scores.all.each do |score|
        sum += score[:score]
      end
      ave = (@team.scores.all.length == 0) ? 0 : sum / @team.scores.all.length
      ave

  end
    # sum = 0
    # count = 0
    # Score.all.each do |score|
    #   if score.user.team_id == @team.id
    #     count ++
    #     sum += score[:score]
    #   end
    # end
    # # ave = sum/count
    # ave = (sum == 0) ? 0 : sum / count
end
