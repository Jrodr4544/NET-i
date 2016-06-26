class ClientsController < ApplicationController

  get '/clients' do

    if logged_in?
      @clients = Client.all
      erb :'clients/index.erb'
    else
      redirect to '/login'
    end
  end

  get '/clients/new' do
    if !logged_in?
      redirect "/login"
    else
      erb :'clients/new.erb'
    end
  end


end