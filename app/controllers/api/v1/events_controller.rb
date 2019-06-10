class Api::V1::EventsController < ApplicationController

  def create
    @event = Event.create(title: params[:title], description: params[:description], date: getCurrentDate, time: getCurrentTime)

    render json: @event
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
    params.require(:event).permit(:title, :description)
  end

end
