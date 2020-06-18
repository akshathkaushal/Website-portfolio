Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :messages
  resources :posts do
    resources :comments
  end
  resources :projects
  root to: 'pages#home'
  get "aboutme" => "aboutme#akshath"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
