require 'sinatra/base'

class Application < Sinatra::Base
 #GET /
 # Root path (home page/index page)
  get '/' do 
   return 'Hello'
  end 

  get '/posts' do 
   name = params[:name]
   return "Hello #{name}"
  end

  post '/submit' do 
    name = params[:name]
    message = params[:message]
    return "Thanks #{name}, you sent this message: #{message}"
  end 
end
#routes 

# GET / -> execute some code
# GET /todos/1 execute other piece of code
# POST /todos -> execute some differnt code