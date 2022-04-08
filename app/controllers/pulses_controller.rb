class PulsesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @users = User.all
    # @pulses = Pulse.all

    # <--------- SEARCHBAR ---------->
    if params[:query].present?
      @pulses = Pulse.global_search("#{params[:query]}")
    else
      @pulses = Pulse.all
    end
  end

  def new
    @pulse = Pulse.new
  end

  def create
    @pulse = Pulse.new(pulse_params)
    @pulse.user = current_user

    if params[:pulse][:category_ids].nil?
      render :new
    else
      if @pulse.save
        params[:pulse][:category_ids].each do |id|
          @pulse_categories = PulseCategory.new
          @pulse_categories.category = Category.find(id)
          @pulse_categories.pulse = @pulse
          @pulse_categories.save
        end
        redirect_to root_path
        flash[:alert] = "C'est pulsé !"
      else
        render :new
      end
    end
  end

  def destroy
    @pulse = Pulse.find(params[:id])
    @pulse.destroy
    redirect_to root_path
  end

  private

  def pulse_params
    params.require(:pulse).permit(:pulse_content)
  end
end
