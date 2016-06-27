class CompaniesController < ApplicationController

  get '/companies' do

    if logged_in?
      @companies = company.all
      erb :'companies/index.erb'
    else
      redirect to '/login'
    end
  end

  get '/companies/new' do
    # if !logged_in?
    #   redirect "/login"
    # else
      erb :'companies/new', :layout => :navigation
    # end
  end

  post '/companies' do
    # if current_user && logged_in?
    #   @company = Company.create(name: params[:name])
    #   redirect to "/companies/#{@company.id}"
    # else
    #   redirect to '/login'
    # end
  end

  get '/companies/:id' do
    # if logged_in?
    #   @company = Company.find
  end
end