class PulsesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @pulses = Pulse.all
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
