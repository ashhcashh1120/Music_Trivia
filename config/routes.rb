Rails.application.routes.draw do
  # resources :scoreboards
  resources :songs
  resources :genres
  resources :scoreboards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end