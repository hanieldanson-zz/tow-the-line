# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User seeds
john = { email:"johnschulz75@gmail.com", password_digest:"1234567890" }
dan = { email:"hanson.e.daniel@gmail.com", password_digest:"1234567890" }
test1 = { email:"a@a.ab", password_digest:"1234567890" }
test2 = { email:"should_fail", password_digest:"1234567890" }
test3 = { email:"should_fail@should_fail", password_digest:"1234567890" }
test4 = { email:"should_fail@should_fail.s", password_digest:"1234567890" }

User.create(john)
User.create(dan)
User.create(test1)
User.create(test2)
User.create(test3)
User.create(test4)
