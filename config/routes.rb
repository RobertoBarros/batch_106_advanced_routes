Rails.application.routes.draw do


  namespace :admin do
    get 'restaurants/index'
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end


  # resources :reviews, except: [:new, :create]
  resources :restaurants do

    resources :reviews, only: [:new, :create]



    collection do
      get 'top', to: 'restaurants#top'
    end

    member do
      get 'chef', to: 'restaurants#chef'
    end

  end





  root to: 'restaurants#index'
end
