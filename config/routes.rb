Rails.application.routes.draw do
  ############################################################################
  # USERS
  ############################################################################
  devise_for :users
  resources :users, only: [:show, :index]


  ############################################################################
  # LANDING
  ############################################################################
  get 'welcome/index'



  authenticated :user do
    root to: "users#index"
  end

  unauthenticated :user do
    root 'welcome#index'
  end
end
