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
			userid = @user.id
			#Default rating for NEW user... Cause we are kind like that....
			rated = {user_id: userid, rating: 1.0, limit: 5.5, interest: 0.2}

			@rating = UserRating.new(rated)
			
			if @rating.save

				#Takes you to show action 
				redirect_to products_url
			else
				#Error handling and management
				render plain: duh
			end
		#redirect_to products_url	
	else

		render 'new'
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

	def user_params
		params.require(:user).permit(:first_name,:last_name,:DOB,:tel_number,:national_id)

	end

	# def rating_params
		
	# 	userid = @user.id

	# 	params.require(:user).permit(userid, 2.0, 5.5)

	# end

end
