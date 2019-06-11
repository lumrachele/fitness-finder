class Api::V1::FavoritesController < ApplicationController

  def create
    @favorite = Favorite.create(favorite_params)
    render json: @favorite, status: :ok
  end

  def show
    @favorite = Favorite.find(params[:id])
    render json: @favorte, status: :ok
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
  end

private

  def favorite_params
    params.require(:favorite).permit(:user_id, :event_id)
  end

end
