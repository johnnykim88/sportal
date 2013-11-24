class UserController < ApplicationController


	def dashboard

		@sport = Sport.new
		@meeting = Meeting.new
	end

end
