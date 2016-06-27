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
    if !logged_in?
      redirect "/login"
    else
      erb :'companies/new.erb'
    end
  end


end