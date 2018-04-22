class UserController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.all
	end

	def update

	end

	def show
		@user = User.find(params[:id])
	end
	
end
