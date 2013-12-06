class UserController < ApplicationController

	def list
		@Users= User.all
	end

	def dashboard
	    @user_sport = UserSport.new
	    @user_sports = current_user.user_sports
	    @sport = Sport.all
	    @sports = current_user.sports
	    @meeting = Meeting.new
	    @mymeetings = current_user.meetings
	    @user_meetings = UserMeeting.all
	    @meetings = UserMeeting.all
	  	@matchmeetings = get_match
	  	
	  	
	  	# raise
    end

	def get_match
		if (params["/dashboard"])
			mymeeting = Meeting.find(params["/dashboard"]["id"])
			Meeting.where(:meetdate => mymeeting.meetdate ).where(:sport_id => mymeeting.sport_id)
	 	end
	end

	def meeting_radius(meeting)
	    distance = 20
	    center_point = [meeting.latitude, meeting.longitude]
	    box = Geocoder::Calculations.bounding_box(center_point, distance)
  		
  	end


	def edit
	    @user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			redirect_to user_root_path
		else
		end
	end
    
    def show
    	@user = User.find(params[:id])
    end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			redirect_to user_root_path
		else
		end
	end

end

