class MerchantsController < ApplicationController
	def index
		@merchant = Merchant.all
	end
	def show
		@merchant = Merchant.find(params[:id])
	end

	def products #List all Products under this merchant
		@merchant = params[:id]

		@product = Product.find_by_sql("SELECT * from products WHERE merchant_id = #{@merchant}")
		#.paginate(:per_page => 9, :page => params[:page]) FIgure out pagination
	end

	def edit
		@merchant = Merchant.find(params[:id])
	end

	# Create calls both new & save methods. Diff: save returns boolean & can be used in branching logic.
	def create
		@merchant = Merchant.new(merchant_params)
		if @merchant.save 
		redirect_to @merchant
	else
		render 'new'
	end
	end

	def update
		@merchant = Merchant.find(params[:id])

		if @merchant.update(merchant_params)
			redirect_to @merchant
		else
			render 'edit'
		end
	end



	private

	def merchant_params
		params.require(:merchant).permit(:first_name, :last_name, :email, :password)
	end
	# def prod_params
	# 	params.require(:product).permit(:title, :description, :price)
	# end
end
