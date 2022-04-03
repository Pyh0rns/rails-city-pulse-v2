class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :lille_city, :infos ]

  def profile
  end

  def lille_city
    @pulses = Pulse.all
  end

  def infos
  end
end
