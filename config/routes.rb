Blog::Application.routes.draw do
  
  devise_for :usuarios

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :categorias

  resources :categoria

  devise_for :users

  resources :comentarios

  resources :logins

  resources :posts
  
  root :to => "posts#index"

end
