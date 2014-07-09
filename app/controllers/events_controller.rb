class EventsController < ApplicationController

  def index
    @query = params[:search]
    if @query.blank?
      @events = Events.all
    else
      @events = Events.where("name like ? or location like ?", '%' + @query + '%', '%' + @query + '%')
      Events.where(name: "Junk")
    end
  end

  def new
  end

  def create

    name = params[:name]
    latitude = params[:lat]
    longitude = params[:lon]
    location = params[:location]
    date = params[:date]

    if date.blank?
      date = Time.now
    end

    event = Events.new
    event.name = name
    event.location = location
    event.date = date

    if event.save
      puts "Cool"
    else
      puts "Hot"
    end

    redirect_to events_path
  end

  def edit
  end

  # def update
  # end

  def delete
  end

end