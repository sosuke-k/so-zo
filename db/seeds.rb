# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: "Michael Hartl", email: "mhartl@example.com",
	password: "foobar", password_confirmation: "foobar")
User.create(name: "Example User", email: "example@example.com",
	password: "example", password_confirmation: "example")
User.create(name: "Sosuke Kato", email: "snoopies.drum@gmail.com",
	password: "snoopies", password_confirmation: "snoopies", admin: true)
User.create(name: "Admin", email: "sozo@dsiy.com",
	password: "sozosozo", password_confirmation: "sozosozo", admin: true)
