Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'billboards#index'

  resources :billboards

  resources :billboards do 
    resources :artists
  end

  resources :billboards do 
    resources :songs
  end

  resources :artists do
    resources :songs
  end
end
