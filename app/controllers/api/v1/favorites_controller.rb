class Api::V1::FavoritesController < ApplicationController



private

  def favorite_params
    params.require(:favorite).permit(:user_id, :event_id)
  end
  
end
