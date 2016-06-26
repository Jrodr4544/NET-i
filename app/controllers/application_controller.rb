
class ApplicationController < Sinatra::Base
  set :views, "#{settings.root}/../views"
  
  get '/' do 
    @clients = Client.all

    erb :'clients/index'
  end
end
