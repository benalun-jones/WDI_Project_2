Rails.application.routes.draw do
  root "users#index"
  devise_for :users
  resources :locations
  resources :artists
  resources :gigs
  resources :users
end
