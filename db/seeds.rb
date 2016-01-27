# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
Cat.create!(
name: Faker::App.name,
birth_date: Faker::Date.backward(1000),
color: ["red","orange","yellow","green","blue","indigo","violet","white",
        "black","rainbow"].sample,
sex: ["M","F"].sample,
description: Faker::Hacker.say_something_smart
)

end
