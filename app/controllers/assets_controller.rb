class AssetsController < ApplicationController

  get '/assets/new' do
    @sites = current_user.company.sites
    erb :'assets/new', :layout => :create
  end

  post '/assets' do
    if current_user && logged_in?
      @site         = Site.find_by(id: params[:company][:site][:site_id])
      @asset        = @site.assets.create(IP: params[:company][:site][:asset][:ip])

      redirect to "/sites/all"
    else
      redirect to '/login'
    end
  end

  get '/assets/:id' do
    @asset = Asset.find(params[:id])
    erb :'assets/show', :layout => :navigation
  end

  get '/assets/:id/edit' do
    @asset = Asset.find(params[:id])
    if logged_in? && current_user
      erb :'/assets/edit', :layout => :create
    else
      redirect to '/login'
    end
  end

  post '/assets/:id/delete' do
    @asset = Asset.find_by(params[:id])
    if logged_in? && current_user
      @asset.destroy
      redirect to '/sites/all'
    else
      redirec to '/login'
    end
  end
end