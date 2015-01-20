# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
org = Organisation.create!(name: 'Test Organisation')

User.create!(organisation: org, name: 'Test user')

Project.create!(organisation: org, name: 'Test Project 1')
Project.create!(organisation: org, name: 'Test Project 2')
Project.create!(organisation: org, name: 'Test Project 3')
