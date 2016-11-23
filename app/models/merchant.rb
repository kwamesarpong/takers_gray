class Merchant < ApplicationRecord
	has_many :products

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
end
