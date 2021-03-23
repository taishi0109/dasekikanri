module Games
  class BatsController < ApplicationController
    # def index
    #   @bats = Bat.all(params[:id])
    # end

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

      # @bat = Bat.new(
      #   result: bat_params[:result]
      # )
      # if @bat.save
      #   redirect_to game_path(@game.id)
      # else
      #   render 'new'
      # end
    end

    private

    def bat_params
      params.require(:bat).permit(:result)
    end
  end
end
