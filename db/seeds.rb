100.times do
  
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  
  team = "#{Faker::GameOfThrones.dragon}s"

  Player.create!(
                first_name: first_name,
                last_name: last_name,
                position: Faker::Company.profession,
                birthdate: Faker::Date.between(18.years.ago, 65.years.ago),
                pro_team: team,
                salary: Faker::Number.decimal(6,2),
                location: Faker::LordOfTheRings.location,
                quote: Faker::HarryPotter.quote

    )
end