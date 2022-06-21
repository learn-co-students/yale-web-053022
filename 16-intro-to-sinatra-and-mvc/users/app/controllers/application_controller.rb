require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/users" do
    @users = User.all
    erb(:index)
  end

  get "/users/:id" do
    binding.pry
    erb(:index)
  end

end
