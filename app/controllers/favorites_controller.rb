class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @pulse = Pulse.find(params[:pulse_id])
    @favorite.pulse = @pulse
    @favorite.user = current_user

    respond_to do |format|
      @favorite.save
      # format.html { redirect_to root_path } -> pas besoin pour l'instant
      format.json { render json: success_data }
    end
    # redirect_to root_path -> pas besoin car ajax
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    # @favorite.destroy

    respond_to do |format|
      @favorite.destroy
      # format.html { redirect_to root_path } -> pas besoin pour l'instant
      format.json { render json: success_data }
    end
    # redirect_to root_path -> pas besoin car ajax
  end

  private

  # method pour refresh la div quand on like
  def success_data
    {
      inserted_item: render_to_string(partial: "pulses/pulse_content_right.html", locals: { pulse: @pulse })
    }
  end
end
