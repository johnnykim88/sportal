class UserController < ApplicationController

	def list

		@Users= User.all
	end

	def dashboard

		@sport = Sport.new
		@meeting = Meeting.new
	end

	def edit
     @user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			redirect_to dashboard_path
		else
		end
	end
    end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			redirect_to dashboard_path
		else
		end
	end

end
