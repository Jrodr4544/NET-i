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
    if logged_in?
      erb :'companies/new', :layout => :create
    else
      redirect "/login"
    end
  end

  post '/companies' do
    if current_user && logged_in?
      @company = Company.create(name: params[:company][:name])
      redirect to "/companies/#{@company.id}"
    else
      redirect to '/login'
    end
  end

  get '/companies/:id' do
    if logged_in? && current_user
      @company = Company.find(current_user.company_id)
      erb :'companies/show', :layout => :navigation
    else
      redirect to '/login'
    end
  end
end