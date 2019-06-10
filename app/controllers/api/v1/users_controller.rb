class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

priate

  def user_params
    params.require(:user).permit(:name)
  end
  
end
