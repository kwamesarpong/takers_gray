class UsersController < ApplicationController
	
	# WE NEED USER'S CREDIT RATING TO ALLOW THEM TO Buy. New users have default ratings
	# WE CAN HAVE DIFFERENT RANGES FOR THE VARIOUS RANKINGS

	def index
		@user = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		
	end

	def create
		@user = User.new(user_params)
		
		
		if @user.save
			
			@rating = UserRating.new(first_rating)
			
			if @rating.save

				#Takes you to Login Page
				redirect_to login_url
			else
				#Error handling and management
				render plain: duh
			end
		#redirect_to products_url	
	else

		#render plain: @user.errors

		render @user.errors
	end
	end

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def delete
		
	end

	private

	def first_rating
		#Default rating for NEW user... Cause we are kind like that....
		rated = {user_id: @user.id, rating: 1.0, limit: 7.5, interest: 0.2}
		return rated
	end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :DOB, :tel_number, :national_id, :password)

	end


	# def unused_param
	# 	params.require(:user).permit(:conf_pwd)
	# end

end
