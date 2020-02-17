require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end 

    get '/new' do
      erb :"pirates/new"
    end 

    post '/pirates' do
    @pirate = Pirate.new(params[:pirate])
     @ship = []
     params[:pirate][:ships].each do |ship|
      @ship << Ship.new(ship)
    end 
    erb :"pirates/show"
    end
  end
end
