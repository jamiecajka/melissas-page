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
