Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resources :users, only: [:index,:show,:edit,:update]
  get "home/about"=>"homes#about"
  root to: "homes#top"
end
