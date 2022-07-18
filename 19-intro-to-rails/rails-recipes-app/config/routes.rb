Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get   "/recipes", to: "recipes#index"
  get   "/recipes/new", to: "recipes#new"
  get   "/recipes/:id", to: "recipes#show", as: :recipe
  post  "/recipes", to: "recipes#create"
  
  # recipes_path by default
  # recipe_path as well
end
