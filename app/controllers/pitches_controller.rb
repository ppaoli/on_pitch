class PitchesController < ApplicationController
  def index
    @pitches = Pitch.all
    @markers = @pitches.geocoded.map do |pitch|
      {
        lat: pitch.latitude,
        lng: pitch.longitude
      }
    end
  end

  def show
    @pitch = Pitch.find(params[:id])
  end
end
