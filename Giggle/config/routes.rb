

Rails.application.routes.draw do
  root "user#index"
  devise_for :users
  resources :locations
  resources :artists
  resources :gigs
  resources :users
end
