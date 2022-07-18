class UsersController < ApplicationController
  # Index route
  get "/users" do
    @users = User.all
    erb :"users/index"
  end

  # Create
  get "/users/new" do
    erb :"users/new"
  end

  post "/users" do
    # create a new user
    user = User.create(params)
    
    # redirect to the show route
    redirect "/users/#{user.id}"
  end

  # Show route (dynamic)
  get "/users/:id" do
    @user = User.find(params[:id])
    puts "hello!"
    erb :"users/show"
  end

  # Edit route
  get "/users/:id/edit" do
    # Show the edit form
    @user = User.find(params[:id])
    erb :"users/edit"
  end

  # Update
  # Put/Patch
  put "/users/:id" do
    user = User.find(params[:id])
    user.update(params[:user])
    redirect "/users/#{user.id}"
  end

end
