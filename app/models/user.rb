class User < ApplicationRecord
	
	
	has_many :user_rating
	#has_many :purchase #fragment consider revision

	validates :first_name, presence: true, length: { maximum: 50 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

	validates :last_name, presence: true, length: { maximum: 50 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

    validates :DOB, presence: true

    validates :tel_number, presence: true

    validates :national_id, presence: true

    validates :password, presence: true, length: { minimum: 8 }

    #validates :conf_pwd, presence: true

    has_secure_password

end
