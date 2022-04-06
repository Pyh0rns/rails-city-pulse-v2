class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :lille_city, :infos ]

  def profile
    profile_params
  end

  def lille_city
    @pulses = Pulse.all
    @categories = Category.all
  end

  def infos
  end

  private

  def profile_params
    params.require(:user).permit(:photo)
  end
end
