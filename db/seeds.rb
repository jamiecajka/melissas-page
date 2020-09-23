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
user1.password = 'password'
user1.save!

service1 = Service.new
service1.name = 'Dermaplane Facial'
service1.description = 'Exfoliation treatment using a medical grade scalpel to removed top layer of dead skin and vellus hair (peach fuzz).'
service1.price = '$65'
service1.time = '60 minutes'
service1.catagory = 'facial'
service1.save!

service2 = Service.new
service2.name = 'Diamond Microdermabrasion'
service2.description = 'Gently exfoliates and vacuums dead skin cells from skin. Helps diminish wrinkles, scarring and is great for increasing blood flow and activate collagen production. Great for most skin types'
service2.price = '$50'
service2.time = '30 minutes'
service2.catagory = 'facial'
service2.save!

service3 = Service.new
service3.name = 'Deep Pore Cleanse'
service3.description = 'Deep pore cleansing with scrub or enzyme exfoliation, ultra sonic spatula removes impurities from skin and finished with serum and moisturizing spf'
service3.price = '$35-$45'
service3.time = '30 minutes'
service3.catagory = 'facial'
service3.save!

service4 = Service.new
service4.name = 'Oxygen Infusion Facial'
service4.description = 'Choose between brightening, sensitive skin, vitamin a,c, and e, and antibacterial'
service4.price = 'Starts at $60'
service4.time = '75 minutes'
service4.catagory = 'facial'
service4.save!

service5 = Service.new
service5.name = 'Bridal Makeup Application: Day Of'
service5.description = 'Full face makeup including airbrush foundation and eye lash strips.'
service5.price = '$75'
service5.time = 'Duration Varies'
service5.catagory = 'makeup'
service5.save!

service6 = Service.new
service6.name = 'Vajacial (Peach Treatment)'
service6.description = 'Its a lady parts facial. Meant to maintain healthy, hydrated skin or to treat any ingrown/scarring issues. Works best around 10 days after wax. Includes cleanse, exfoliation, extractions if needed, mask and moisturizer.'
service6.price = 'Starts at $45'
service6.time = 'Duration Varies'
service6.catagory = 'misc'
service6.save!

service7 = Service.new
service7.name = 'Back Treatment'
service7.description = 'A back treatment is all the same steps of a facial, can be customized to address any issues such as back acne. Double cleanse, light massage, exfoliation, mask and moisturizer.'
service7.price = 'Starts at $45'
service7.time = 'Duration Varies'
service7.catagory = 'misc'
service7.save!

service8 = Service.new
service8.name = 'Pampered Package'
service8.description = 'Customized facial with body treatment. Add on two enhancement services: under-eye treatment, décolleté treatment, LED light therapy, hand/arm scrub or hydro jelly mask.'
service8.price = 'Starts at $85'
service8.time = '90 minutes'
service8.catagory = 'misc'
service8.save!

service9 = Service.new
service9.name = 'Eyebrow Tint'
service9.description = 'Darken your eyebrows or eyelashes last about 3 weeks'
service9.price = '$15'
service9.time = 'Duration Varies'
service9.catagory = 'makeup'
service9.save!

service10 = Service.new
service10.name = 'Eyelash Application'
service10.description = 'Strip lashes applied'
service10.price = '$10'
service10.time = 'Duration Varies'
service10.catagory = 'makeup'
service10.save!

service11 = Service.new
service11.name = 'Airbrush Makeup Application'
service11.description = 'Primer, airbrush foundation, then rest of face is regular makeup application, and setting spray. Includes strip eyelash application.'
service11.price = '$60'
service11.time = 'Duration Varies'
service11.catagory = 'makeup'
service11.save!

service12 = Service.new
service12.name = 'Eyebrow Wax'
service12.description = 'Wax includes concealer and eyebrow makeup fill.'
service12.price = '$13'
service12.time = 'Duration Varies'
service12.catagory = 'waxing'
service12.save!

service13 = Service.new
service13.name = 'Chin Wax'
service13.description = 'Getting rid of those whiskers'
service13.price = '$13'
service13.time = 'Duration Varies'
service13.catagory = 'waxing'
service13.save!

service14 = Service.new
service14.name = 'Under Arm Wax'
service14.description = 'So you can stay fresh'
service14.price = '$25'
service14.time = 'Duration Varies'
service14.catagory = 'waxing'
service14.save!

service15 = Service.new
service15.name = 'Under Eye Treatment'
service15.description = 'Eye treatment pads placed under each eye, $5 if you add it to a service'
service15.price = '$10'
service15.time = 'Duration Varies'
service15.catagory = 'misc'
service15.save!

service16 = Service.new
service16.name = 'Specialized Facial: Anti-Aging or Acne'
service16.description = 'Targeted treatment includes double cleanse, oil massage, exfoliator enzyme mask, and serum and spf moisturizer.'
service16.price = 'Starts at $55'
service16.time = '60 minutes'
service16.catagory = 'facial'
service16.save!

service17 = Service.new
service17.name = 'Lip Wax'
service17.description = 'No more hairy lip!'
service17.price = '$13'
service17.time = 'Duration Varies'
service17.catagory = 'waxing'
service17.save!

service18 = Service.new
service18.name = 'Full Face Wax'
service18.description = 'Includes eyebrows, upper lip, chin, and cheeks'
service18.price = 'Starts at $40'
service18.time = 'Duration Varies'
service18.catagory = 'waxing'
service18.save!
