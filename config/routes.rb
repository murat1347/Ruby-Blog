Rails.application.routes.draw do
  get 'welcomes/index'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about' =>'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
