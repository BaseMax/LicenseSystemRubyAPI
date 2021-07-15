class HomesController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: :ok
  end
end
