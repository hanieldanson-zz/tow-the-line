# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User seeds

admin = User.create(email:"admin@admin.admin", password:"1234")

users = [ john = { email:"johnschulz75@gmail.com", password:"1234567890", password_confirmation: "1234567890" },
					dan = { email:"hanson.e.daniel@gmail.com", password:"1234567890" },
					test1 = { email:"a@a.ab", password:"1234567890" },
					test2 = { email:"should_fail", password:"1234567890" },
					test3 = { email:"should_fail@should_fail", password:"1234567890" },
					test4 = { email:"should_fail@should_fail.s", password:"1234567890" },
					test5 = { email:".should_fail@should_fail.should_fail", password:"1234567890" },
					test6 = { email:"should_fail@should_fail.s", password:"1234567890" } ]

users.each_with_index do |user, i|
	temp = User.new(user)
	puts "User \##{i + 1} created with email - #{user[:email]}" if temp.save
end
