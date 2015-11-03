Rails.application.routes.draw do
  root "static_pages#home"
  
  devise_for :users
  resources :locations
  resources :artists
  resources :gigs
  resources :users
end
