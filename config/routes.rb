Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "otroser", to: "pages#otroser"

  get    "/series",          to: "series#index"
  get    "/series/new",      to: "series#new", as: :new_serie
  post   "/series",          to: "series#create"
  get    "/series/:id",      to: "series#show", as: :serie
  get    "/series/:id/edit", to: "series#edit", as: :edit_serie
  patch  "series/:id",        to: "series#update", as: :update_series
  delete "/series/:id",      to: "series#destroy"
end
