Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :categories
  resources :favorites
  resources :ingredients

  post "recipes/:id/to_make", to: "user_recipes#make"
  get "recipes/:id/to_make", to: "user_recipes#make_progress"


  # get "/users/:id", to: "users#show"
  post "/user_recipes", to: "user_recipes#make_submit"



end
