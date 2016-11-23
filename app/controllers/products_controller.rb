class ProductsController < ApplicationController
	def index
	end

	def show
	end

	def new
	end
	
	def create
		@merchant = Merchant.find(params[:merchant_id])

		@product = @merchant.products.create(prod_params)

		redirect_to merchant_path(@merchant)

	end

	private

	def prod_params
		params.require(:product).permit(:title, :description, :price)
	end
end
