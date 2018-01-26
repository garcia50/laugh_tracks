class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedians.all

    erb :index
  end
end
