Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/home'
  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  resources :posts
  root to: "pages#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
