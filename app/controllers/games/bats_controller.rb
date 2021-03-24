module Games
  class BatsController < ApplicationController
    def new
      @game = current_user.games.find(params[:game_id])
      @bat = @game.bats.new
    end

    def create
      @game = current_user.games.find(params[:game_id])
      @bat = @game.bats.new(result: bat_params[:result])

      if @bat.save
        redirect_to game_path(@game.id)
      else
        render 'new'
      end
    end

    def edit
      @game = current_user.games.find(params[:game_id])
      @bat = @game.bats.find(params[:id])
    end

    def update
      @game = current_user.games.find(params[:game_id])
      @bat = @game.bats.find(params[:id])
      if @bat.update(bat_params)
        redirect_to game_path(@game)
      else
        render 'edit'
      end
    end

    private

    def bat_params
      params.require(:bat).permit(:result)
    end
  end
end
