Rails.application.routes.draw do
  devise_for :users
  root to: 'treatments#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    resources :treatments, only: [ :index, :new, :create] do
      resources :trackers, only: [ :index, :new, :create]
      resources :categories, only: [ :index, :show ]

    end

      #resources :trackers, only: [ :edit, :update ]
    # tracker_index == dashboard
end
