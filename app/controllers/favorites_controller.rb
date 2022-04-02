class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @pulse = Pulse.find(params[:pulse_id])
    # j'arrive bien a trouver le pulse donc je peux faire un @pulse.broadcast_update?
    @favorite.pulse = @pulse
    @favorite.user = current_user
    @favorite.save
    # redirect_to root_path

    # -------------- test turbo-rails ----------------

    # @favorite.broadcast_update@
    # @pulse.broadcast_update
    # raise
    # >> params
    # => #<ActionController::Parameters {"_method"=>"post", "authenticity_token"=>"5ykexVglYDCBhpnAtSc8nPKDY1JHg468lv3kNrNGAJ_L2ZVR8fgxAfs5mMowVLZNVnNSlcmM4gvtatP8i0ncxQ", "controller"=>"favorites", "action"=>"create", "pulse_id"=>"17"} permitted: false>
    # >> @favorite
    # => #<Favorite id: 273, user_id: 5, pulse_id: 17, created_at: "2022-04-01 18:03:54.548910000 +0000", updated_at: "2022-04-01 18:03:54.548910000 +0000">
    # -------------- test turbo-rails ----------------
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    # redirect_to root_path

    # -------------- test turbo-rails ----------------
    # raise

    # @pulse = Pulse.find(params[:pulse_id])
    # @favorite.broadcast_update
    # -------------- test turbo-rails ----------------
  end
end
