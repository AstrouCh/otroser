Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "otroser", to: "pages#otroser"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get    "series",          to: "series#index"
  get    "series/new",      to: "series#new", as: :new_serie
  post   "series",          to: "series#create"
  get    "series/:id",      to: "series#show", as: :serie
  get    "series/:id/edit", to: "series#edit", as: :edit_serie
  patch  "series/:id",      to: "series#update"
  delete "series/:id",      to: "series#destroy"

  resources :series do
    resources :photos
  end

end
