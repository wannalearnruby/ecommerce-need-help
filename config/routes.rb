Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :user, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :users
  get '/home' => 'products#home'


  resources :categories, only: [:index] do
  	resources :products, only: [:index, :show]
  end



  root to: 'products#home'
end
