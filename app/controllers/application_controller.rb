class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/rentals' do
   rentals = Rental.all
   rentals.to_json
 end

 get '/owners' do
  owners = Owner.all
  owners.to_json
 end

 get '/rentals/:id/owner' do
  # Find the rental based on the ID parameter
  rental = Rental.find(params[:id])

  # Retrieve the owner information for the rental
  owner = rental.user

  # Return the owner information as a JSON object
  { name: owner.name, email: owner.email, tel: owner.tel }.to_json
end


# app.rb

post '/rentals/:id/reviews' do
  rental = Rental.find(params[:id])
  review = rental.reviews.new(rating: params[:rating], comment: params[:comment])

  if review.save
    { success: true }.to_json
  else
    { success: false }.to_json
  end
end

get '/rentals/:rental_id/reviews' do
  rental = Rental.find_by(id: params[:rental_id])
  if rental
    reviews = rental.reviews
    reviews.to_json
  else
    halt 404, "Rental not found"
  end
end




 
 get '/reviews' do
   reviews = Review.all
   reviews.to_json
 end
 get '/owners' do
   owners = Owner.all
   owners.to_json
 end 
#  post '/signup' do
#   user = User.new(params)
#   if user.save
#     session[:user_id] = user.id
#     redirect '/'
#   else
#     redirect '/signup'
#   end
# end
post '/users/signup' do
  request_body = JSON.parse(request.body.read)
  firstname = request_body['firstname']
  lastname = request_body['lastname']
  username = request_body['username']
  email = request_body['email']
  password = request_body['password']

  user = User.new(firstname: firstname, lastname: lastname, username: username, email: email, password: password)

  if user.save
    # Return a success response with the user data
    user.to_json
  else
    # Return an error response
    status 400
    { error: "Unable to create user" }.to_json
  end
end


   post '/login' do
    email = params[:email]
    password = params[:password]
    is_owner = params[:isOwner]
  
    # Find the user by email
    user = User.find_by(email: email)
  
    if user && user.authenticate(password)
      # Authentication successful, return a JSON response with the user ID and type
      status 200
      content_type :json
      { id: user.id, is_owner: is_owner }.to_json
    else
      # Authentication failed, return a 401 Unauthorized response
      status 401
    end
  end
  

#   post "/signup" do
#     owner=Owner.new(params)
#     if owner.name.empty?||owner.email.empty? ||owner.tel.blank?||owner.password.empty?||Owner.find_by_email(params[:email])||Owner.find_by_name(params[:name])
#        status 401
#        { errors: "something went wrong" }.to_json
#     else
#      owner.save
#      owner.to_json
#     end 
#    end

get "/users" do
   users = User.all
   users.to_json
 end

 get '/bookings' do
   bookings = Booking.all
   bookings.to_json
 end

 put '/rentals/:id/add_images' do
  rental = Rental.find(params[:id])
  rental.images.concat(params[:image_urls])
  rental.save
end


 post '/users' do
  # Create a new user in the database
  user = User.create(params)

  # Return the new user as JSON
  content_type :json
  user.to_json
end
get "/login/:email" do
   owner=Owner.find_by_email(params[:email])
 
   if owner
    owner.to_json(include: [:rentals])
    else
    status 401
    { errors: "user doesn't exist" }.to_json
  end
   
 end
 
 post '/bookings' do
  booking = Booking.new(params[:booking])

  if booking.save
    # Do something on successful save
    status 201
    { booking: booking }.to_json
  else
    # Do something on failed save
    status 422
    { errors: booking.errors }.to_json
  end
end


  #  post "/bookings" do
  #     request_body = JSON.parse(request.body.read)
  #     user_id = request_body["user_id"]
  #     rental_id = request_body["rental_id"]
  #     start_date = request_body["start_date"]
  #     end_date = request_body["end_date"]
  #     total_price = request_body["total_price"]
    
  #     user = User.find(user_id)
  #     rental = Rental.find(rental_id)
    
  #     booking = Booking.create(
  #       user_id: user.id,
  #       rental_id: rental.id,
  #       start_date: start_date,
  #       end_date: end_date,
  #       total_price: total_price
  #     )
    
  #     user.bookings << booking
  #     rental.bookings << booking
    
  #     # Return a success response with the booking data
  #     booking.to_json
  #   end
    
    get '/rentals/:id' do
      content_type :json
    
      # Retrieve the rental with the specified ID
      rental = Rental.find(params[:id])
    
      # Return the rental as JSON
      rental.to_json
    end
end
  
