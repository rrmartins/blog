Blog::Application.routes.draw do
  
  resources :categorias

  resources :categoria

  devise_for :users

  resources :comentarios

  resources :logins

  resources :posts
  
  root :to => "posts#index"

end
