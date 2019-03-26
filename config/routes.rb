Rails.application.routes.draw do
      resources :items, only: [:index, :update]

      post '/hello', to:  'items#hello'
    end
