class PulsesController < ApplicationController
  def index
    @pulses = Pulse.all
    # -------------- test turbo-rails ----------------
    # @pulse = Favorite.find(params[:id].pulse) # Pulse.find(params[:id]) #pas sur sinon =
    # if @pulse.liked?
    #   @favorite = Favorite.find(params[:id])
    # else
    #   @favorite = Favorite.new
    # end
    # -------------- test turbo-rails ----------------

    # unless params[:pulse_id].nil?
    #   @pulse = Pulse.find(params[:pulse_id])
    #   @favorites = Favorite.where(pulse_id: @pulse)
    #   @pulse.broadcast_replace
    # end

  end

  def new
    @pulse = Pulse.new
  end

  def create
    @pulse = Pulse.new(pulse_params)
    @pulse.user = current_user

    if @pulse.save
      redirect_to root_path
      flash[:alert] = "C'est pulsé !"
    else
      render :new
    end
  end

  def destroy
  end

  private

  def pulse_params
    params.require(:pulse).permit(:pulse_content)
  end
end
