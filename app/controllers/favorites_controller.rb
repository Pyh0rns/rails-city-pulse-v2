class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @pulse = Pulse.find(params[:pulse_id])
    @favorite.pulse = @pulse
    @favorite.user = current_user
    # @favorite.save

    # -------------- test AJAX ------------------
    respond_to do |format|
      @favorite.save
      # format.html { redirect_to root_path }
      format.json { render json: success_data }
    end
    # redirect_to root_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    # redirect_to root_path
  end

  private

  def success_data
    {
      inserted_item: render_to_string(partial: "pulses/pulse_content_right.html", locals: { pulse: @pulse })
      # , locals: { favorite: @favorite }
      # , locals: { pulse: @pulse }

    }
  end
end
