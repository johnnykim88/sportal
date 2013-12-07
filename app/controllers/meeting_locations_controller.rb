class MeetingLocationsController < ApplicationController
  # GET /meeting_locations
  # GET /meeting_locations.json
  def index
    @meeting_locations = MeetingLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meeting_locations }
    end
  end

  # GET /meeting_locations/1
  # GET /meeting_locations/1.json
  def show
    @meeting_location = MeetingLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meeting_location }
    end
  end

  # GET /meeting_locations/new
  # GET /meeting_locations/new.json
  def new
    @meeting_location = MeetingLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meeting_location }
    end
  end

  # GET /meeting_locations/1/edit
  def edit
    @meeting_location = MeetingLocation.find(params[:id])
  end

  # POST /meeting_locations
  # POST /meeting_locations.json
  def create
    @meeting_location = MeetingLocation.new(params[:meeting_location])

    respond_to do |format|
      if @meeting_location.save
        format.html { redirect_to @meeting_location, notice: 'Meeting location was successfully created.' }
        format.json { render json: @meeting_location, status: :created, location: @meeting_location }
      else
        format.html { render action: "new" }
        format.json { render json: @meeting_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meeting_locations/1
  # PUT /meeting_locations/1.json
  def update
    @meeting_location = MeetingLocation.find(params[:id])

    respond_to do |format|
      if @meeting_location.update_attributes(params[:meeting_location])
        format.html { redirect_to @meeting_location, notice: 'Meeting location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meeting_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_locations/1
  # DELETE /meeting_locations/1.json
  def destroy
    @meeting_location = MeetingLocation.find(params[:id])
    @meeting_location.destroy

    respond_to do |format|
      format.html { redirect_to meeting_locations_url }
      format.json { head :no_content }
    end
  end
end
