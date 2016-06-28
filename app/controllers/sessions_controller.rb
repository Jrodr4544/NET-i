class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/login', :layout => :navigation
  end

  post '/sessions' do
    login(params[:email], params[:password])
    redirect 'sites/all'
  end

  get '/logout' do
    session.clear
    erb :welcome
  end

end