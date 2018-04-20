class UserController < ApplicationController
	before_action :authenticate_user!
<<<<<<< HEAD

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end
=======
	def show
		@user = User.find(params[:id])
	end
	
>>>>>>> 76bded3458be1f4fe05700407c7cfeec8e2f98a2
end
