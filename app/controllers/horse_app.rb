class HorseApp < Sinatra::Base

  get '/' do
    erb :"home/dashboard"
  end

  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/horses/new' do
    @horse = Horse.new
    @jockeys = Jockey.all
    @breeds = Breed.all
    erb :"horses/new"
  end

  post '/horses' do
    @horse = Horse.create(params[:horse])
    redirect "/horses/#{@horse.id}"
  end

  get '/horses/:id' do
    @horse = Horse.find(params[:id])
    erb :"horses/show"
  end

  get '/jockeys' do
    erb :"/jockeys/index"
  end

  get '/jockeys/:id' do
    @jockey = Jockey.find(params[:id])
    erb :"jockeys/show"
  end

end
