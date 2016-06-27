require 'sinatra'
require 'sinatra/authlane'

class ApplicationController < Sinatra::Base
  # Using Sinatra extension format to be able to use AuthLane
  register  Sinatra::AuthLane
  helpers   Sinatra::Cookies   

  # setting my views folder and setting the public folder
  # although this did not work when linking html bootstrap theme
  # to css in /public. Also using configure to customize authlane settings
  configure do
    set     :views,         "app/views"
    set     :public_folder, 'public'
    enable  :sessions
    set     :session_secret, 'secret_password'
    # set :authlane,  :failed_route     =>  '/login',
    #                 :session_key      =>  :authlane,
    #                 :remember_cookie  =>  :authlane_token,
    #                 :serialize_user   =>  [:username] # can also specify a user model here
  end

  # Sinatra::AuthLane.create_role_strategy do |roles|


  # end

  get '/' do 
    # @companies = Company.all
    if logged_in?
      erb :'companies/index', :layout => :navigation
    else
      redirect to '/login'
    end
  end

  # get '/user' do
  #   protect! #dunno what this does yet
  # end

  helpers do
    def logged_in?
      !!session[:email]
    end

    def current_user
      @current_user ||= User.find_by(email: session[:email]) if session[:email]
    end

    def login(email, password)
      user = User.find_by(:email => email)
      if user && user.authenticate(password)
        session[:email] = user.email
      else
        redirect '/login'
      end
    end

    # def logout!
    #   session.clear
    # end

  end
end
