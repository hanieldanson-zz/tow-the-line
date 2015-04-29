	# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User seeds

admin = Admin.create(email:"a", password:"1234")

users = [ john = { email:"johnschulz75@gmail.com", password:"1234567890", password_confirmation: "1234567890" },
					dan = { email:"hanson.e.daniel@gmail.com", password:"1234567890" },
					test1 = { email:"a@a.ab", password:"1234567890" },
					test2 = { email:"john@dbc.com", password:"zxcvbnm", password_confirmation: "zxcvbnm" },
					failure1 = { email:"should@should.fail", password:"1234567890", password_confirmation: "fail" },
					failure2 = { email:"should_fail", password:"1234567890" },
					failure3 = { email:"should_fail@should_fail", password:"1234567890" },
					failure4 = { email:"should_fail@should_fail.s", password:"1234567890" },
					failure5 = { email:".should_fail@should_fail.should_fail", password:"1234567890" },
					failure6 = { email:"_should_fail@should_fail.should_fail", password:"1234567890" },
					failure7 = { email:"$should_fail@should_fail.should_fail", password:"1234567890" },
					failure8 = { email:"()should_fail@should_fail.should_fail", password:"1234567890" } ]

users.each_with_index do |user, i|
	temp = User.new(user)
	if temp.save
		puts "User \##{i + 1} created with email - #{user[:email]}"
	else
		puts "User \##{i + 1} not created with email - #{user[:email]}"
	end
end

car1 = Car.new({  	:make => "Honda",
                   :model => "Del Sol",
                    :year => 1997,
                   :color => "Silver",
                :nickname => "None",
    :license_plate_number => "RM 4312"})

User.find(4).cars << car1

