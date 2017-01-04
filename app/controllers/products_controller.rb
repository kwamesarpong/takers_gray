class ProductsController < ApplicationController
	def index
		
		
		@product = Product.all().paginate(:per_page => 9, :page => params[:page])

		# @merchant = Merchant.find(params[:merchant_id])
		
		# @product = Merchant.index.paginate(:per_page => 9, :page => params[:page])
		
		#@product = Product.
		end

	def show
		
	end


	def new
 
	end
	
	def create
		@merchant = Merchant.find(params[:merchant_id])

		product = @merchant.products.create(prod_params)

		redirect_to merchant_products_path() 

		#redirect_to merchant_products_path ()

	end

	def update
		
	end

	private

	def prod_params
		params.require(:product).permit(:title, :description, :price, :id)
	end
end
