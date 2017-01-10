class PurchasesController < ApplicationController
	
	def index

	end

	def create
		#dummy create purchase method to test something out...
		#USER SESSIONS... FUCK!
		@ur = UserRating.find_by_user_id(session[:user_id]).limit
		@prod = Product.find_by_id(purchase_params[:product_id]).price
		@purchase = Purchase.new(purchase_params)

		if @prod < @ur
			
			@purchase.save

			render plain: 'Done!'
		else

			render plain: 'ERROR'
		end
	end

	def update

	end

	private

	def purchase_params
		
		params.require(:purchases).permit(:user_id,:product_id,:price,:rate,:total)

		# params[:total] = params[:price] * params[:rate]

		# return params[:total] #Italeta shida??

	end


end
