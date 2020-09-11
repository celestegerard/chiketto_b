Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'

  resources :users

  resources :prizes do
    resources :comments
  end

end
