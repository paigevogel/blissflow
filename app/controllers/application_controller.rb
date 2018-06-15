require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  post '/' do
    if params[:tone] == "hobbies"
      return erb :hobbies
     elsif params[:tone] == "study"
      return erb :study
      elsif params[:tone] == "destress"
      return erb :destress
      elsif params[:tone] == "quotes"
      return erb :quotes
      elsif params[:tone] == "hotlines"
      return erb :hotlines
    end 
  end 
end 