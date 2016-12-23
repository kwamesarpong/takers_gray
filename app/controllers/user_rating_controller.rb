class UserRatingController < ApplicationController
	#Ratings Belong to users but should be auto generated....

	#First time users should not have the same rating as return users.
	def index
		@ur = UserRating.all
	end

	def show

	end

	def create


	end


end
