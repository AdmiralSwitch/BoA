class PitchesController < ApplicationController
  def new
  end

  def create
    @pitch = Pitch.new(params[:pitch])

    @pitch.save
    redirect_to @pitch
  end


end
