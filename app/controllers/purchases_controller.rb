class PurchasesController < ApplicationController
	
	def index

	end

	def new

	end

	def create
		#dummy create purchase method to test something out...
		#USER SESSIONS... FUCK!
		@ur = UserRating.where(:user_id => param[:u_id])
		@prod = Product.where(:id => param[:p_id])
		@purchase = Purchase.new(purchase_params)

		if @ur.limit < @prod.price
			@purchase.save

			render plain: 'Done!'
		else
			render plain: 'doh'
		end
	end

	def update

	end

	private

	def purchase_params
		
		params.require(:product).permit(:user_id,:product_id,:price,:rate,:total)

		total = price * rate

		return total #Italeta shida??

	end


end
