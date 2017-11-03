Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/edit'

  devise_for :users
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
