require 'bundler'
Bundler.require
require_relative './models/scraper.rb'

# require 'bundler'
# Bundler.require
# require_relative './models/firebase.rb'
# require_relative './models/user.rb'

class MyApp < Sinatra::Base
#   DATABASE = FlatironBase.new("https://incandescent-inferno-7013.firebaseio.com/")
#   DATABASE.add_table("users", {"name" => "Placeholder Name", "email" => "placeholder@placeholder.com", "password" => "placeholderpassword"})

#   get '/' do
#     @users = DATABASE.get_data
#     erb :index
#   end

#   post '/signup' do
#     DATABASE.add("users", {"name" => params[:name], "email" => params[:email], "password" => params[:password]})
#       redirect('/')
#   end



  get '/Login' do
    erb :Login

  end


  get '/Fusic' do
    erb :Fusic
    
  end


  get '/forgotpassword' do
    erb :forgotpassword
    
  end

   get '/Angry' do
    erb :Angry
    
  end

   get '/email' do
    erb :email
    
  end

   get '/Happy' do
    scraper = Scraper.new
    @happy_title = scraper.happy_title
    erb :Happy
  end

   get '/Home' do
    erb :Home
    
  end

   get '/Messages' do
    erb :Messages
    
  end

   get '/Profile' do
    erb :Profile
    
  end

   get '/Sad' do
    scraper = Scraper.new
    @sad_title = scraper.sad_title
    puts @sad_title
    erb :Sad
    
  end

   get '/Unstressed' do
    erb :Unstressed
    
  end

  get '/Hype' do
    scraper = Scraper.new
    @hype_title = scraper.hype_title
    puts @hype_title
    erb :Hype
  end

end