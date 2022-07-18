class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @users = User.all
    @recipe = Recipe.new
  end

  def create
    byebug
    @recipe = Recipe.create(params[:recipe])
    if @recipe.save
      flash[:success] = "Recipe successfully created"
      redirect_to @recipe
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  

  def show
    @recipe = Recipe.find(params[:id])
  end
  
end
