require "faker"

puts "🌱 Seeding spices..."

puts "Destroying all data...."

Owner.destroy_all
Rental.destroy_all
User.destroy_all
Booking.destroy_all
Review.destroy_all

puts "Seeding Owners and Rentals..."

10.times do
owner = Owner.create(
name: Faker::Name.first_name,
email: Faker::Internet.email,
tel: Faker::PhoneNumber.cell_phone_in_e164,
password: Faker::Internet.password(min_length: 8)
)

2.times do
rental = Rental.create(
name: Faker::Company.name,
description: Faker::Lorem.paragraph(sentence_count:2),
image: "https://ibb.co/pjRzP0P",
location: Faker::Address.full_address,
price: Faker::Commerce.price,
available: true,
owner_id: owner.id
)

end
end

puts "Seeding Users, Bookings and Reviews..."

5.times do
user = User.create(
firstname: Faker::Name.first_name,
lastname: Faker::Name.last_name,
username: Faker::Internet.username,
email: Faker::Internet.email,
password: Faker::Internet.password(min_length: 8)
)


end

puts "✅ Done seeding!"