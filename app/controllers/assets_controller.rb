class AssetsController < ApplicationController

  get '/assets/new' do
    erb :'assets/new', :layout => :navigation
  end

  post '/assets' do
    # @asset
  end

  get '/assets/:id' do
    @asset = Asset.find(params[:id])
    erb :'assets/show', :layout => :navigation
  end
end