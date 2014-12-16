Rails.application.routes.draw do
  devise_for :views
  devise_for :users

  root 'welcome#index'

resources :artists
resources :songs
resources :playlists

end
