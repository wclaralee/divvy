class UserController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.all
	end

	def update
		@user.name = params[:name]
		@user.venmo_handle = params[:venmo_handle]
		@user.save
		redirect_to '/users/edit'
	end

	def show
		@user = User.find(params[:id])
	end
	
end
