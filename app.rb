require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' #gives us the ability to reference the TextAnalyzer class and invoke its new method

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  
  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    #take the data from params[:user_text] and feed it into a new instance of the TextAnalyzer class
    erb :results
  end
end
