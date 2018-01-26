class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :welcome
  end

  get '/comedians' do
    @comedians = Comedian.all

    erb :index
  end
end
