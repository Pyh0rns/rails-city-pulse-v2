class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :lille_city, :infos ]

  def profile
    @pulses = Pulse.all
    @categories = Category.all
  end

  def lille_city
    @pulses = Pulse.all
    @categories = Category.all
    @users = User.all
    @favorites = Favorite.all
  end

  def infos
  end
end
