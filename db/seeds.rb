# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do
  start_date = Date.new((2008 + rand(12)))
  end_date = start_date + rand(start_date - Date.today)
  Education.create(school_name: Faker::Educator.university, field_of_study: Faker::Educator.course, degree: Faker::Job.education_level, start_date: start_date, end_date: end_date, user_id: User.last.id)
end

puts "Eductions created! Niiiicee"

3.times do
  start_date = Date.new((2012 + rand(6)))
  end_date = start_date + rand(start_date - Date.today)
  end_date = '' if end_date == Date.today
  Position.create(company_name: Faker::Company.name, summary: Faker::Lorem.paragraph(15), start_date: start_date, end_date: end_date,  company_ticker_url: Faker::Company.logo, is_current: end_date == '', title: Faker::Job.title, user_id: User.last.id)
end

Position.create(company_name: Faker::Company.name, summary: Faker::Lorem.paragraph(15), start_date: Date.new((2012 + rand(6))), end_date: Date.today,  company_ticker_url: Faker::Company.logo, is_current: true, title: Faker::Job.title, user_id: User.last.id)

puts "Positions created! Niiiicee"

10.times do
  Skill.create(name: Faker::Job.key_skill, user_id: User.last.id)
end

puts "Eductions created! Niiiicee"

puts "All created for last user!"
