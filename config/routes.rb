Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :series, only: %i[index create new edit show update destroy] do
    resources :photos, only: %i[index create new edit show update destroy]
  end
end
