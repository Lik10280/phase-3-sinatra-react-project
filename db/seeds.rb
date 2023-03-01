puts "🌱 Seeding spices..."

# Seed your database here
# Seed data for the User model
User.create(firstname: "John", lastname: "Doe", username: "jdoe", email: "jdoe@example.com", password: "password123")
User.create(firstname: "Jane", lastname: "Doe", username: "jane", email: "jane@example.com", password: "password456")

# Seed data for the Apartment model
Apartment.create(apartment_name: "Cozy Studio", image: "https://example.com/cozy-studio.jpg", location: "123 Main St, Anytown, USA", price: 1000, bedrooms: 1, monthly_rent: 900)
Apartment.create(apartment_name: "Spacious Loft", image: "https://example.com/spacious-loft.jpg", location: "456 Elm St, Anytown, USA", price: 2000, bedrooms: 2, monthly_rent: 1800)

# Seed data for the Booking model
Booking.create(start_date: Date.today, end_date: Date.today + 7, user_id: 1, apartment_id: 1, payment_status: "paid")
Booking.create(start_date: Date.today + 14, end_date: Date.today + 21, user_id: 2, apartment_id: 2, payment_status: "pending")

# Seed data for the Review model
Review.create(user_id: 1, apartment_id: 1, rating: 4, comment: "Great location, but could use some better amenities.")
Review.create(user_id: 2, apartment_id: 2, rating: 5, comment: "Absolutely stunning loft! Will definitely be staying here again.")


puts "✅ Done seeding!"
