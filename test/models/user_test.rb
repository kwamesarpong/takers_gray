require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(first_name: "foot", last_name: "bars", DOB: 111290, tel_number: 123456789, 
				national_id: 29201409, password_digest: "foobar")
	end

	test "the_truth" do
		
		assert @user.valid?


	end

	test "Name should be there" do
		@user.first_name = ' 	'
		assert_not @user.valid?
	end
	
end
