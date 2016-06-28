class SitesController < ApplicationController

  get '/sites/new' do
    if logged_in?
      erb :'sites/new', :layout => :create
    else
      redirect to '/login'
    end
  end

  post '/sites' do
    # binding.pry
    @site           =   Site.new
    @site.address   =   params[:site][:address]
    @site.company   =   Company.find(current_user.company_id)
    @site.contacts  <<  Contact.create(params[:site][:contact])

    if @site.save
      redirect to 'sites/all'
    else
      redirect to 'sites/new'
    end
  end

  get '/sites/all' do
    if current_user
      # binding.pry
      @company  = Company.find(current_user.company_id)
      @sites    = @company.sites
      
      if @sites.empty?
        redirect to 'sites/new'
      else
        erb :'sites/index', :layout => :navigation
      end
    else
      redirect to 'sites/new'
    end
  end

  get '/sites/:id' do
    if logged_in?
      @site     = Site.find(params[:id])
      erb :'sites/show', :layout => :navigation
    else
      redirect to '/login'
    end
  end  

end