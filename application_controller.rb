require 'bundler'
Bundler.require

require 'bundler'
Bundler.require
require_relative './models/firebase.rb'
require_relative './models/user.rb'

class MyApp < Sinatra::Base
  DATABASE = FlatironBase.new("https://incandescent-inferno-7013.firebaseio.com/")
  DATABASE.add_table("users", {"name" => "Placeholder Name", "email" => "placeholder@placeholder.com", "password" => "placeholderpassword"})

  get '/' do
    @users = DATABASE.get_data
    erb :index
  end

  post '/signup' do
    DATABASE.add("users", {"name" => params[:name], "email" => params[:email], "password" => params[:password]})
      redirect('/')
  end

end

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
    erb :Sad
    
  end

   get '/Unstressed' do
    erb :Unstressed
    
  end

  get '/Hype' do
    erb :Hype
    
  end

end