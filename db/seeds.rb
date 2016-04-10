require 'faker'

100.times do
     Flatmate.create(
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        leaving_out: Faker::Time.between(DateTime.now - 1, DateTime.now),
        ariiving: Faker::Time.between(DateTime.now - 1, DateTime.now),
        duties: Faker::Lorem.paragraph,
        charges: Faker::Number.between(100, 700)
      )
end
