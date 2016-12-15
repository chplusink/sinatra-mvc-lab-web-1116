require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      erb :user_input
    end

    post '/piglatinize' do
      input = PigLatinizer.new
      input.to_pig_latin(params[:user_phrase])
    end

end
