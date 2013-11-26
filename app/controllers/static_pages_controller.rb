class StaticPagesController < ApplicationController

  def home
    # if signed_in?
      
    #   @feed_items = current_user.feed.paginate(page: params[:page])
    # end
  end
  
  def dashboard
    
    @sport = Sport.new
    @sports = current_user.sports
    @meeting = Meeting.new
    @meetings = current_user.meetings
    @user_meetings = UserMeeting.all 
    # @user_sport = UserSport.new
    # @user_sports = UserSport.all
    # @search = User.joins(:sports).search(params[:q])
    # @users = @search.result
    # @users = @contents.joins(:sports)
    # @search.build_condition if @search.conditions.empty?
    # @search.build_sort if @search.sorts.empty?
  end

  def match
    @meetings = user_meeting
  end

  def help
  end

  def about
  end

  def contact
  end
end