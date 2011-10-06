Blog::Application.routes.draw do
  
  devise_for :users

  resources :comentarios

  resources :logins

  resources :posts
  
  root :to => "posts#index"

end
