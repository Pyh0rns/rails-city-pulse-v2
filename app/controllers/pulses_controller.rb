class PulsesController < ApplicationController
  def index
    @pulses = Pulse.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
