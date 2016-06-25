
class ApplicationController < Sinatra::Base

  get '/' do 
    @clients = Client.all

    erb :'clients/index'
  end
end
