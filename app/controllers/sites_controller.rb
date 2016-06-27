class SitesController < ApplicationController

  get '/sites/new' do
    erb :'sites/new', :layout => :navigation
  end

  post '/sites' do
    # binding.pry
    @site           =   Site.new
    @site.address   =   params[:site][:address]
    @site.contacts  <<  Contact.create(params[:site][:contact])

    if @site.save
      redirect to '/sites'
    else
      redirect to 'sites/new'
    end
  end

  get '/sites/index' do
    if current_user
      company = Company.find(current_user.company_id)
      @sites = company.sites
      erb :'sites/index', :layout => :navigation
    else
      redirect to 'sites/new'
    end
  end

  get '/sites/:id' do
    # if logged in
      @site     = Site.find(params[:id])
      erb :'sites/show', :layout => :navigation

  end  

end