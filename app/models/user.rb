class User < ActiveRecord::Base

	has_many :cars
	has_many :notifications
	
end
