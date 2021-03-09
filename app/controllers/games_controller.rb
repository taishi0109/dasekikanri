class GamesController < ApplicationController
  def index
    @games = Game.all
    @game = Game.new
  end

  # def new
  #   @games = Game.all(params[:id])
  # end

  def create
    @game = Game.new(
      name: game_params[:name],
      user: game_params[:user]
    )
    # if @game.save
    # redirect_to games_path(@game.bat)
    # @game = Game.new(params[:user_id])
    # if @game.save
    #   redirect_to games_create_path
    # else
    #   redirect_to games_path
    # end
  end

  def show
    @games = Game.new(user_id: params[:id])
    # @newpost = Post.new(topic_id: params[:id])
  end

  private

  def game_params
    params[:game].permit(:id, :name, :user)
  end
end
