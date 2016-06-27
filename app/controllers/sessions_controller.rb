class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/login', :layout => :navigation
  end

  post '/sessions' do
    login(params[:email], params[:password])
    redirect 'sites/index'
  end

  get '/logout' do
    session.clear
  end

end