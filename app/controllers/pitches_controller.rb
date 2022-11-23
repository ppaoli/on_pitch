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
    @pitch.user = current_user
    if @pitch.save
      redirect_to pitches_path
    else
      render :new, status: :unprocessable_entity
    end
  end


private
def pitch_params
  params.require(:pitch).permit(:name, :address, :sport)
  # addPhotoWhenReady
end

end
