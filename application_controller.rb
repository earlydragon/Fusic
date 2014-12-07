require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

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