class PitchesController < ApplicationController
  def new
  end

  def create
    render plain: params[:pitch].inspect
  end
end
