Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/home'
  devise_for :users
  resources :posts
  root to: "pages#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
