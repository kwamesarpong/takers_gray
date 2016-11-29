class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find_by_id(params[:id])
	end

	def new
	end
	
	def create
		@merchant = Merchant.find(params[:merchant_id])

		product = @merchant.products.create(prod_params)

		redirect_to action: "show", id: product.id

		#redirect_to merchant_products_path ()

	end

	private

	def prod_params
		params.require(:product).permit(:title, :description, :price, :id)
	end
end
