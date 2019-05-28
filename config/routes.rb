Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/about', to: 'pages#about'

  resources :articles

  get 'welcome/home', to: 'welcome#home'
  get 'welcome/about', to: 'welcome#about'

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

end
