require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Group.destroy_all
UserGroup.destroy_all
Event.destroy_all
Activity.destroy_all

User.create(name: Faker::Name.name, image: "001-woman.svg", password: "123", username: "abs1")
User.create(name: Faker::Name.name, image: "003-man-1.svg", password: "123", username: "abs2")
User.create(name: Faker::Name.name, image: "004-man-2.svg", password: "123", username: "abs3")
User.create(name: Faker::Name.name, image: "005-man-3.svg", password: "123", username: "abs4")
User.create(name: Faker::Name.name, image: "006-man-4.svg", password: "123", username: "abs5")
User.create(name: Faker::Name.name, image: "009-cowboy.svg", password: "123", username: "abs6")
User.create(name: Faker::Name.name, image: "010-cowgirl.svg", password: "123", username: "abs7")
User.create(name: Faker::Name.name, image: "014-man-6.svg", password: "123", username: "abs8")
User.create(name: Faker::Name.name, image: "015-gymnast.svg", password: "123", username: "abs9")

Group.create(name: Faker::Company.name, creator: User.find(1).name)
Group.create(name: Faker::Company.name, creator: User.find(2).name)
Group.create(name: Faker::Company.name, creator: User.find(3).name)

UserGroup.create(user_id: User.find(1).id, group_id: 1)
UserGroup.create(user_id: User.find(2).id, group_id: 1)
UserGroup.create(user_id: User.find(3).id, group_id: 1)
UserGroup.create(user_id: User.find(4).id, group_id: 2)
UserGroup.create(user_id: User.find(5).id, group_id: 2)
UserGroup.create(user_id: User.find(6).id, group_id: 2)
UserGroup.create(user_id: User.find(7).id, group_id: 3)
UserGroup.create(user_id: User.find(8).id, group_id: 3)
UserGroup.create(user_id: User.find(9).id, group_id: 3)

activities = ['Coding', 'Basketball', 'Chilling', 'Hiking', 'Going to the Movies']

activities.each do |activity|
  Activity.create(title: activity,location: Faker::Address.full_address)
end

Event.create(group_id: 1,activity_id: 1,name: Faker::Company.buzzword,time: Faker::Date.between(Date.today, 1.year.from_now))
Event.create(group_id: 1,activity_id: 2,name: Faker::Company.buzzword,time: Faker::Date.between(Date.today, 1.year.from_now))
Event.create(group_id: 1,activity_id: 3,name: Faker::Company.buzzword,time: Faker::Date.between(Date.today, 1.year.from_now))
Event.create(group_id: 2,activity_id: 1,name: Faker::Company.buzzword,time: Faker::Date.between(Date.today, 1.year.from_now))
Event.create(group_id: 2,activity_id: 4,name: Faker::Company.buzzword,time: Faker::Date.between(Date.today, 1.year.from_now))
Event.create(group_id: 2,activity_id: 5,name: Faker::Company.buzzword,time: Faker::Date.between(Date.today, 1.year.from_now))
Event.create(group_id: 3,activity_id: 2,name: Faker::Company.buzzword,time: Faker::Date.between(Date.today, 1.year.from_now))
Event.create(group_id: 3,activity_id: 4,name: Faker::Company.buzzword,time: Faker::Date.between(Date.today, 1.year.from_now))
