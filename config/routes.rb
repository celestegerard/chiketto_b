Rails.application.routes.draw do

  get 'welcome/index'
  root 'welcome#index'

  get 'user/index'

  resources :prizes do
    resources :comments
  end

end
