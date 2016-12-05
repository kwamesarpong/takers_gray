class UsersController < ApplicationController
	
	# WE NEED USER'S CREDIT HISTORY AND RATING TO ALLOW THEM TO BORROW??
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
		#Takes you to show action 
		redirect_to products_url
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
		params.require(:user).permit(:first_name,:last_name,:DOB,:telephone_number,:national_id)

	end

end
