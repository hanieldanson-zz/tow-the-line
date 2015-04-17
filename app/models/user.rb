class User < ActiveRecord::Base

	has_many :cars
	has_many :notifications

	validates :email, uniqueness: true, presence: true, format: { with: /[A-z](\w|[.])*@[A-z]+[.][A-z]{2,}/}
	validates :password_digest, presence: true

end
