class MerchantsController < ApplicationController
	def index
		@merchant = Merchant.all
	end
	def show
		@merchant = Merchant.find(params[:id])
	end

	def new
	end

	def create
		@merchant = Merchant.new(merchant_params)
		@merchant.save
		redirect_to @merchant
	end

	private

	def merchant_params
		params.require(:merchant).permit(:first_name, :last_name, :email, :password)
	end
end
