class UserRatingController < ApplicationController
	#Ratings Belong to users but should be auto generated....

	#First time users should not have the same rating as return users.
	def index
		@ur = UserRating.all
	end

	def show

		@ur = UserRating.find_by_user_id(params[:user_id])

	end

	def create


	end


end
