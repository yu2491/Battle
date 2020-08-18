require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "Hello Battle!"
  end

  #starts the server if ruby file executed directly
  run! if app_file == $0
end
