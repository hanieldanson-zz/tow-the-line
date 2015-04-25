class Admin < ActiveRecord::Base
	has_secure_password

	validates :email, uniqueness: true, presence: true, format: { with: /[A-z](\w|[.])*@[A-z]+[.][A-z]{1,}/}
	validates :password, presence: true

end
