require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinize = PigLatinizer.new
    @latinized_word = "#{piglatinize.piglatinize(params[:user_phrase])}"

    erb :pig_latinized 
  end
end
