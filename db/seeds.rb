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

10.times do
  User.create(name: Faker::Name.name)
end

3.times do
  Group.create(name: Faker::Company.name)
end

UserGroup.create(user_id: 1, group_id: 1)
UserGroup.create(user_id: 2, group_id: 1)
UserGroup.create(user_id: 3, group_id: 1)
UserGroup.create(user_id: 4, group_id: 2)
UserGroup.create(user_id: 5, group_id: 2)
UserGroup.create(user_id: 6, group_id: 2)
UserGroup.create(user_id: 7, group_id: 3)
UserGroup.create(user_id: 8, group_id: 3)
UserGroup.create(user_id: 9, group_id: 3)
UserGroup.create(user_id: 10, group_id: 3)

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
