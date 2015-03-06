class PitchesController < ApplicationController
  respond_to :json

  def index
    # For a given controller action,
    # respond_with generates an appropriate
    # response based on the mime-type requested
    # by the client.
    respond_with Pitch.all
  end

  def show
    respond_with Pitch.find(params[:id])
  end

  def create
    params.permit!
    respond_with Pitch.create(params[:pitch])
  end

  def update
    params.permit!
    respond_with Pitch.update(params[:id], params[:pitch])
  end

  def destroy
    respond_with Pitch.destroy(params[:id])
  end
end
