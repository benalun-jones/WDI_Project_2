Rails.application.routes.draw do
  root "static_pages#home"
  
  devise_for :users
  resources :locations, :artists, :gigs, :users
end