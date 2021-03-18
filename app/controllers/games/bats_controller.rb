module Games
  class BatsController < ApplicationController
    def index
      @bats = Bat.all(psrsms[:id])
    end

    def create
      @bat = bat.new(params[:id],
                     result: params[:name],
                     game: params[:game_id])
    end
  end
end
