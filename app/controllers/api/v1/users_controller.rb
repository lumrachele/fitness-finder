class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  def update
    @user = User.update(user_params)
    render json: @user, status: :ok
  end

private

  def user_params
    params.require(:user).permit(:name)
  end

end
