class PitchesController < ApplicationController
  def index
    @pitches = Pitch.all
  end

  def show
    @pitch = Pitch.find(params[:id])
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_params)
    if @pitch.save
      redirect_to pitch_path(@pitch)
    else
      render :new, status: :unprocessable_entity
    end
  end

    private
  def pitch_params
    params.require(:pitch).permit(:name, :address, :sport, :photo)
  end
end
