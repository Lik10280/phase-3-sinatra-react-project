class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # in your controller
get '/reviews/user/:id' do
  content_type :json
  @user = User.find(params[:id])
  @reviews = @user.reviews
  @reviews.to_json
end


end
