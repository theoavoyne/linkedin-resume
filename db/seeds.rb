Education.destroy_all
User.all.each do |user|
  2.times do
    start_date = Date.new((2008 + rand(12)))
    end_date = start_date + rand(start_date - Date.today)
    Education.create(
      school_name: Faker::Educator.university,
      field_of_study: Faker::Educator.course,
      degree: Faker::Job.education_level,
      start_date: start_date,
      end_date: end_date,
      notes: Faker::Lorem.paragraph(10),
      user_id: user.id)
  end
end

puts "Eductions created! Niiiicee"

Position.destroy_all
User.all.each do |user|
  Position.create(
    company_name: Faker::Company.name,
    summary: Faker::Lorem.paragraph(15),
    start_date: Date.new((2012 + rand(6))),
    end_date: nil,
    company_ticker_url: Faker::Company.logo,
    is_current: true,
    title: Faker::Job.title,
    user_id: user.id)

  2.times do
    start_date = Date.new((2012 + rand(6)))
    end_date = start_date + rand(start_date - Date.today)
    Position.create(
      company_name: Faker::Company.name,
      summary: Faker::Lorem.paragraph(15),
      start_date: start_date, end_date: end_date,
      company_ticker_url: Faker::Company.logo,
      is_current: false,
      title: Faker::Job.title,
      user_id: user.id)
  end
end

puts "Positions created! Niiiicee"

Skill.destroy_all
User.all.each do |user|
  10.times do
    skill = Skill.new(
      name: Faker::Job.key_skill,
      user_id: user.id)
    skill.save unless Skill.where(name: skill.name).exists?
  end
end

puts "Skills created! Niiiicee"
