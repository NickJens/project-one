class EventsController < ApplicationController

  def index
    @query = params[:search]
    if @query.blank?
      @events = Events.all
    else
      @events = Events.where("name like ? or address like ?", '%' + @query + '%', '%' + @query + '%')
      Events.where(name: "Junk")
    end
  end

  def show
    @event = Events.find(params[:id])

  end

  def create

    @name = params[:name]
    @latitude = params[:lat]
    @longitude = params[:lon]
    @address = params[:address]
    @date = params[:date]

    if @date.blank?
      @date = Time.now
    end

    @event = Events.new
    @event.name = @name
    @event.address = @address
    @event.date = @date
    @event.lat = @latitude
    @event.lon = @longitude



    if @event.save
      puts "Cool"
      redirect_to "/events/#{@event.id}"
    else
      puts "Hot"
    end

    # render :show
  end

  def edit
  end

  # def update
  # end

  def delete
  end

end