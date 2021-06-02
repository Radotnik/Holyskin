Rails.application.routes.draw do
  get 'trackers/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :treatments, only: [ :index, :show, :new, :create, :edit, :update, :destroy]
       resources :trackers, only: [ :index, :new, :create, :edit, :update ]
    # tracker_index == dashboard
end
