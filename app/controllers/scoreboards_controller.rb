class ScoreboardsController < ApplicationController

  def index
    @scoreboards = Scoreboard.all
		render json: @scoreboards
  end

  # def new
  #   @scoreboard = Scoreboard.new
  #   render json: @scoreboard
  # end
  # def create
  #   @scoreboard = Scoreboard.find(params[:id])
  #   render json: @scoreboard
  # end

  def create
  @scoreboard = Scoreboard.new(score_params)
  if @scoreboard.save
    render json: @scoreboard
  else
    render json: @scoreboard
    end
  end

  private
  def score_params
    params.require(:scoreboard).permit(:name, :score)
  end

end
