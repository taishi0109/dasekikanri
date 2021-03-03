class GamesController < ApplicationController
  def create
    @game = Game.new(
      name: params[:id]
    )
  end

  def show
    @games = Game.all
  end
end
