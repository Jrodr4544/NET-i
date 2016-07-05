class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/login', :layout => :navigation
  end

  post '/sessions' do
    # binding.pry
    login(params[:email], params[:password])
    # User.login
    redirect 'sites/all'
  end

  get '/logout' do
    session.clear
    erb :welcome
  end

end