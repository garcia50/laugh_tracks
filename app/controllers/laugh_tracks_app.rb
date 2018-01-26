class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :welcome
  end

  get '/comedians' do
    if params[:age] != nil
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end

    erb :index
  end
end
