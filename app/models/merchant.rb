class Merchant < ApplicationRecord
	has_many :products

	validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates :email, presence: true, uniqueness: { case_sensitive: false }
	validates :password, presence: true

	def fullname
		#method for returning both 1st and last names
	end
end
