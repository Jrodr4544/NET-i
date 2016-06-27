class AssetsController < ApplicationController

  get '/assets/new' do
    erb :'assets/new', :layout => :navigation
  end

  post '/assets' do
    @asset
  end
end