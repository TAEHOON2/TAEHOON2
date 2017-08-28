Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts, except: [:show] do
  post "/like"=> "likes#like_toggle"
  resources :comments, only: [:create, :destroy]
end
end
