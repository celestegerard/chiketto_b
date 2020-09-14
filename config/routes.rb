Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :prizes do
        resources :comments
      end
    end
  end

  default_url_options :host => "http://localhost:3000"

  get 'welcome/index'
  root 'welcome#index'

  resources :users


end
