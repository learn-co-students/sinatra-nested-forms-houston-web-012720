require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
    erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    # get '/pirates' do 
    #   erb :'/pirates/show'
    # end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = Ship.all
      # binding.pry
      params[:pirate][:ships].each do |details|
        @ships << Ship.new(details)
      end
      erb :'/pirates/show'
    end
  end
end
