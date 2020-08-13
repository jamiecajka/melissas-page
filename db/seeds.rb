# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Post.create(
    body: Faker::Hipster.paragraph
  )
end

10.times do
  Service.create(
    name: Faker::Food.dish,
    description: Faker::ChuckNorris.fact,
    price: Faker::Number.number(digits: 2)
  )
end

melissa = Contact.new
melissa.name = 'Melissa Stone'
melissa.address = '3601 Calvert St #26'
melissa.city = 'Lincoln, Ne'
melissa.zip = '68506'
melissa.phone = '(402) 570-7538'
melissa.email = 'melissaann4883@yahoo.com'
melissa.facebook = 'https://www.facebook.com/blushestheticsstudione/'
melissa.extra_one = 'm.me/blushestheticsstudione'
melissa.instagram = 'instagram.com'
melissa.snapchat = 'snapchat.com'
melissa.bio = Faker::Movies::Ghostbusters.quote
melissa.picture = Rails.root.join('db/images/melissa.jpg').open
melissa.save

first = Direction.new
first.starting_location = '48th and Pioneers Street'
first.step_one = 'Head west on Pioneers Blvd toward S 47th St'
first.step_two = 'Turn right onto S 40th St'
first.step_three = 'Turn left onto Calvert St'
first.step_four = 'Turn left onto Loveland Dr'
first.step_five = 'Turn left at Fiene Cir'
first.save

second = Direction.new
second.starting_location = '27th & O Street'
second.step_one = 'Head west on S 27th St toward N 27th St'
second.step_two = 'Turn left onto Sheridan Blvd'
second.step_three = 'At the traffic circle, take the 1st exit onto S 33rd St'
second.step_four = 'Turn left onto Calvert St'
second.step_five = 'Turn right onto Loveland Dr'
second.step_six = 'Turn left at Fiene Cir'
second.save

user1 = User.new
user1.name = 'Melissa'
user1.email = 'melissaann4883@yahoo.com'
user1.encrypted_password = 'password'
user1.save!
