class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @users = User.new(params[:id])
  end
end
