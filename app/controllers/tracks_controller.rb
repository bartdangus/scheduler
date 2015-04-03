class TracksController < ApplicationController
  def show 
    @day = Day.find(params[:day_id])
    @track = Track.find(params[:id])
  end
 
  def new
    @day = Day.find(params[:day_id])
    @track = Track.new

  end

  def index
    @track = Track.find(params[:id])
  end

  def create
    @day = Day.find(params[:day_id])
    @track = Track.new(params.require(:track).permit(:name))
    @track.day = @day

    if @track.save
      flash[:notice] = "Saved"
      redirect_to [@day]
    else
      flash[:error] = "Error"
      render :new
    end
  end
end