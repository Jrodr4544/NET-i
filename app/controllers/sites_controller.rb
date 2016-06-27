class SitesController < ApplicationController

  get '/sites/new' do
    erb :'sites/new', :layout => :navigation
  end

  post '/sites' do
    @site           = User.new
    @site.address   = params[:address]
    @site.contact   = Contact.new(params[:contact_name],params[:contact_number])

    if @site.save
      redirect 'sites/index'
    else
      redirect 'sites/new'
    end
  end

  get '/sites' do
    # show sites that only belong to user's
    # company

  end

  get '/sites/:id' do
    # if logged in
      @site     = Site.find(params[:id])
      erb :'sites/show', :layout => :navigation

  end  

end