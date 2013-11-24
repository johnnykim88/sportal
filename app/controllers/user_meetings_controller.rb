class UserMeetingsController < ApplicationController
  # GET /user_meetings
  # GET /user_meetings.json
  def index
    @user_meetings = UserMeeting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_meetings }
    end
  end

  # GET /user_meetings/1
  # GET /user_meetings/1.json
  def show
    @user_meeting = UserMeeting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_meeting }
    end
  end

  # GET /user_meetings/new
  # GET /user_meetings/new.json
  def new
    @user_meeting = UserMeeting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_meeting }
    end
  end

  # GET /user_meetings/1/edit
  def edit
    @user_meeting = UserMeeting.find(params[:id])
  end

  # POST /user_meetings
  # POST /user_meetings.json
  def create
    @user_meeting = UserMeeting.new(params[:user_meeting])

    respond_to do |format|
      if @user_meeting.save
        format.html { redirect_to @user_meeting, notice: 'User meeting was successfully created.' }
        format.json { render json: @user_meeting, status: :created, location: @user_meeting }
      else
        format.html { render action: "new" }
        format.json { render json: @user_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_meetings/1
  # PUT /user_meetings/1.json
  def update
    @user_meeting = UserMeeting.find(params[:id])

    respond_to do |format|
      if @user_meeting.update_attributes(params[:user_meeting])
        format.html { redirect_to @user_meeting, notice: 'User meeting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_meetings/1
  # DELETE /user_meetings/1.json
  def destroy
    @user_meeting = UserMeeting.find(params[:id])
    @user_meeting.destroy

    respond_to do |format|
      format.html { redirect_to user_meetings_url }
      format.json { head :no_content }
    end
  end
end
