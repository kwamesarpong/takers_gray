require 'test_helper'

class PurchasesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "The comparision" do
  	@user_limit = UserRating.find_by_user_id(45)
  	@prod_price = Product.find_by_id(4)
  	@purchase = Purchase.new(user_id: 45, product_id: 4, rate: 0.2, price: 3.5, total: 4.2)

  		if @prod_price.price < @user_limit.limit
  			@purchase.save
  		else
  			assert_not @purchase.valid?
  		end
	end
end
