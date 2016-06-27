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
      redirect 'sites/index'
    else
      redirect 'sites/new'
    end
  end

  get '/sites/index' do
    # show sites that only belong to user's
    # company
    erb :'sites/index', :layout => :navigation
  end

  get '/sites/:id' do
    # if logged in
      @site     = Site.find(params[:id])
      erb :'sites/show', :layout => :navigation

  end  

end