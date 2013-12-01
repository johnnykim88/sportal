class StaticPagesController < ApplicationController

  def home
    
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
    
    
      
  end

  # def match
  #   @meetings = user_meeting
  # end

  def help
  end

  def about
  end

  def contact
  end
end