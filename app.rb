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
      @ships = []
      @pirate = Pirate.new(params[:pirate])
      @ships << Ship.new(params[:pirate][:ships][0])
      @ships << Ship.new(params[:pirate][:ships][1])
      # binding.pry
      erb :"pirates/show"
    end

  end
end
