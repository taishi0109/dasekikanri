class UsersController < ApplicationController
  def index
    @users = User.new(params[:id])
  end
end
