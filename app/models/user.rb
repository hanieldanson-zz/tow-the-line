class User < ActiveRecord::Base
	has_secure_password

	has_many :cars
	has_many :notifications

	validates :email, uniqueness: true, presence: true, format: { with: /[A-Z a-z](\w|[.])*@[A-z]+[.][A-z]{2,}/}
	validates :password, presence: true

end
