class Api::V1::EventsController < ApplicationController

  def index
    @events = Event.all
    render json: @events, status: :ok
  end

  def create
    @event = Event.create(title: params[:title], description: params[:description], date: getCurrentDate, time: getCurrentTime)
    render json: @event, status: :ok
  end

  def show
    @event = Event.find(params[:id])
    render json: @event, status: :ok
  end

  def update
    @event = Event.update(event_params)
    render json: @event, status: :ok
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private
  def getCurrentDate
    Time.now().strftime("%Y-%m-%d")
  end


#time is still printing out full date and time
  def getCurrentTime
    Time.now(Time.now().strftime("%Y")).strftime("%H:%M")
  end

  def event_params
    params.require(:event).permit(:title, :description, :date, :time)
  end

end
