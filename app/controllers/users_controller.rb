class UsersController < ApplicationController
  
  get '/signup' do
    erb :'users/new', :layout => :navigation
  end

  post '/users' do
    @user           = User.new
    @user.email     = params[:email]
    @user.password  = params[:password]

    if @user.save
      redirect '/login'
    else
      redirect '/signup'
    end
  end


end