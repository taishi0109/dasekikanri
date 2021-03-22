class GamesController < ApplicationController
  def index
    @games = Game.all
    @game = Game.new
  end

  def new
    @game = Game.new
  end

  def create
    # @game = Game.new(
    #   user: current_user,
    #   name: game_params[:name]
    # )

    @game = current_user.games.new(game_params)

    # @game.save
    #   redirect_to new_game_path
    # else
    #   redirect_to root_path
    # end
    # if @game.save
    # redirect_to games_path(@game.bat)
    # @game = Game.new(params[:user_id])
    if @game.save
      redirect_to game_path(@game.id)
    else
      render 'new'
    end
  end

  def show
    # @user = User.find(user_id: params[:id])
    # @games = @user.games
    @game = current_user.games.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:id, :name, :game_date)
  end
end
