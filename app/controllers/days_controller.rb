class DaysController < ApplicationController

def create
  @day = Day.new(params.require(:day).permit(:name)) 

  if @day.save
    flash[:notice] = "Saved"
    redirect_to @day
  else
    flash[:error] = "Error"
    render :new
  end
end

def show 
  @day = Day.find(params[:id])
  @tracks = @day.tracks
  @track = Track.find(params[:id])
  @events = @track.events
  @event = Event.find(params[:id])
end

def new
  @day = Day.new
end

def index
  @days = Day.all
  #@day = Day.find(params[:id])
end

def edit
  @day = Day.find(params[:id])
end

def update
  @day = Day.find(params[:id])
end

end
