Blog::Application.routes.draw do
  devise_for :users

  resources :logins

  resources :posts
  
  root :to => "posts#index"

end
