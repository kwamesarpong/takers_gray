class Merchant < ApplicationRecord
	has_many :products

	before_save { email.downcase! }
	validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

	validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

    Reg_email = /\A[\w+\-.]+@[a-z\d\-.]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    #In rb Constants are indicated by starting with a capital letter

	validates :email, presence: true, format: { with: Reg_email }, uniqueness: { case_sensitive: false }

	validates :password, presence: true

	def fullname
		#method for returning both 1st and last names
	end
end
