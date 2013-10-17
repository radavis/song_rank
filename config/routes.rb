SongRank::Application.routes.draw do
  resources :albums
  resources :ratings, only: :update
end
