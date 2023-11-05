Rails.application.routes.draw do
  root to:'homes#top'
  get 'home/about' => 'homes#about'
  
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :books, only: [:index, :create, :edit, :show, :update, :destroy]
resources :users, only: [:index, :create, :edit, :show, :update, :destroy]
end

