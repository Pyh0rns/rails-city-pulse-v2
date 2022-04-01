class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @pulse = Pulse.find(params[:pulse_id])
    @favorite.pulse = @pulse
    @favorite.user = current_user
    @favorite.save
    # redirect_to root_path
    @pulse.broadcast_update
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    # redirect_to root_path
    @pulse = Pulse.find(params[:pulse_id])
    @pulse.broadcast_update

  end
end
