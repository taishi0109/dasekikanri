class GamesController < ApplicationController
  def index
    @games = current_user.games.order(game_date: :DESC)
  end

  def new
    @game = current_user.games.new
  end

  def create
    @game = current_user.games.new(game_params)
    if @game.save
      redirect_to game_path(@game.id)
    else
      render 'new'
    end
  end

  def show
    @game = current_user.games.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:id, :name, :game_date, :game_name)
  end
end
