Rails.application.routes.draw do
  root 'billboards#index'

  resources :billboards
  resources :songs
  resources :billboard_song_rankings
  resources :artists

  # resources :billboards do 
  #   resources :artists
  # end

  resources :billboards do
    resources :billboard_song_rankings
  end

  # resources :songs do
  #   resources :billboard_song_rankings
  # end

  # resources :artists do
  #   resources :songs
  # end
end
