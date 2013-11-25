class MeetingsController < ApplicationController
  # GET /meetings
  # GET /meetings.json
  def index
    @meetings = Meeting.all
    
    #@meetings = current_user.meetings
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
    @meeting = Meeting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meeting }
    end
  end

  # GET /meetings/new
  # GET /meetings/new.json
  def new
    @meeting = Meeting.new
    
    @sports = current_user.sports  

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meeting }
    end
  end

  # GET /meetings/1/edit
  def edit
    @meeting = Meeting.find(params[:id])
  end

  def search
  match
  render :match
  end

  def match

    if params[:search].present?
      @meetings = Meeting.near(params[:search], 50, :order => :distance)
      else
      @meetings = Meeting.all
    end
  
    # @meetings = current_user.meetings
    # @search = Meeting.joins(:users).search(params[:q])
    # @meetings = @search.result
    # @meetings = @meetings.joins(:users)
    # @search.build_condition if @search.conditions.empty?
    # @search.build_sort if @search.sorts.empty?

  end


  # POST /meetings
  # POST /meetings.json
  def create
    @meeting = Meeting.new(params[:meeting])
    @meeting = current_user.meetings.create(params[:meeting])
      if @meeting.save
          redirect_to dashboard_path
        else
      end
  end

  # PUT /meetings/1
  # PUT /meetings/1.json
  def update
    @meeting = Meeting.find(params[:id])

    respond_to do |format|
      if @meeting.update_attributes(params[:meeting])
        format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.json
  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy

    respond_to do |format|
      format.html { redirect_to meetings_url }
      format.json { head :no_content }
    end
  end
end
