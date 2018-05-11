require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @english = params[:user_phrase]
    @piglatin = PigLatinizer.new(params[:user_phrase])

    erb :piglatinizer
  end
end
