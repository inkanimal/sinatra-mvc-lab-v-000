require_relative 'config/environment'
require_relative 'models/piglatinizer.rb' 

class App < Sinatra::Base
  
    get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    
    sent = params[:user_phrase]
    word = PigLatinizer.new
    @pig_lantizer = word.piglatinize(sent)
   
  # @pig_latinizer = PigLatinizer.new(params[:user_phrase]) 

    erb :results
  end
end