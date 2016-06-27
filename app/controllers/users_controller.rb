class UsersController < ApplicationController
  
  get '/signup' do
    erb :'users/new', :layout => :navigation
  end

  post '/users' do
    @user           = User.new
    @user.email     = params[:email]
    @user.password  = params[:password]
    # using first to get the company instance
    company         = Company.find(params[:company][:company_id]).first
    # setting the user's company
    company.users  << @user
    
    if @user.save
      redirect '/login'
    else
      redirect '/signup'
    end
  end


end