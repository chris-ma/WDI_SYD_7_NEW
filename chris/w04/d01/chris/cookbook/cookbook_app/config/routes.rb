# == Route Map
#

Rails.application.routes.draw do
  
root to: 'Pages#index'

resources :books
resources :recipes
resources :ingredients
end
