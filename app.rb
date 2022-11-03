require 'sinatra/base'
require "sinatra/reloader"


class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get'/tasks/new' do 
    return erb(:new_task)
end 
  post'/tasks' do
    @task_name = params[:task_name]
    return erb(:task_created)
  end
end
#  get '/' do 
#    return 'Hello'
#   end

#   get '/else' do 
#     # @greet = params[:greet]
#     return erb(:index)
#   end 

#   get '/posts' do 
#    name = params[:name]
#    return "Hello #{name}"
#   end

#   post '/submit' do 
#     name = params[:name]
#     message = params[:message]
#     return "Thanks #{name}, you sent this message: #{message}"
#   end 

#   get '/names' do 
#     name = params[:name]

#     return "#{name}"
#   end
  
#   get '/hello?' do 
#     name = params[:name]
#     return "Hello #{name}!"
#   end 

#   post '/sort-names' do 
#     names = params[:names]
#     sorted = names.split(',').sort!.join(',')
    
#     return "#{sorted}"
#   end 
# end 
#routes 

# GET / -> execute some code
# GET /todos/1 execute other piece of code
# POST /todos -> execute some differnt code
