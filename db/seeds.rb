puts "Creating cars..."

User.create!(first_name: "John", last_name: "Doe", email: "user@test.com", password: "password", password_confirmation: "password")

Car.create!(make: "VW", model: "Passаt", year: 2000 , salon: "Struga")
Car.create!(make: "Opel", model: "Astra", year: 2000 , salon: "Struga")
Car.create!(make: "Fiat", model: "Bravo", year: 2010 , salon: "Ohrid")
Car.create!(make: "Mercedes", model: "C-200", year: 2005 , salon: "Ohrid")
Car.create!(make: "Renault", model: "Megane", year: 2008 , salon: "Ohrid")

puts "Seeding ended!"