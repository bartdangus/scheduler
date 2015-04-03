class EventsController < ApplicationController
  def index
  end

  def show
    #@day = Day.find(params[:day_id])
    @track = Track.find(params[:track_id])
    @events = @track.events
  end

  def new
    @day = Day.find(params[:day_id])
    @track = Track.find(params[:track_id])
    @event = @track.events.new
  end

  def create 
    @day = Day.find(params[:day_id])
    @track = Track.find(params[:track_id])
    @events = @track.events
    #@new_event = @track.events.new
    @event = @track.events.new(params.require(:event).permit(:name, :start_time, :end_time))


  if @event.save
    flash[:notice] = "Saved"
    redirect_to @day
  else
    flash[:error] = "Error"
    render :new
  end
end

  def edit
  end

  def update
  end

  def destroy
  end
end
