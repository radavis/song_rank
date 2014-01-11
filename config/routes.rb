SongRank::Application.routes.draw do
  resources :directories

  resources :albums
  resources :ratings, only: :update

  root to: "albums#index"
end
