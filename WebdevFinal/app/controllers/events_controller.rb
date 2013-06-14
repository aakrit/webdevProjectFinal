class EventsController < ApplicationController

  before_filter :find_event, except: [:new, :create, :index, :edit]

  def find_event
    @event = Event.find(params[:id])
  end

  def add_user

    @join = UserEvent.new()

    @join.event_id = @event.id
    @join.user_id = current_user.id
    @join.save

    redirect_to "/events"
  end
  # GET /events
  # GET /events.json
  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    puts "++++++++++++++++++++++++++++++++++++++++++This event venue is: #{@event.venue} id is #{@event.id}"
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit

    @event = Event.find(params[:id])


  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])
    @event.venue_id = params[:event][:venue_id]
    puts "event.venueid which we just set: #{@event.venue_id}"
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end
