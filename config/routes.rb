Rails.application.routes.draw do
  get 'notes/create'

  get 'notes/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html root 'welcome#home'
 root 'welcome#home'
  get  '/help',    to: 'welcome#help'
  get  '/about',   to: 'welcome#about'
  get  '/contact', to: 'welcome#contact'
  get  '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

 resources :users
 resources :account_activations, only: [:edit]
 resources :workdays do
 	resources :notes, only: [:create, :edit, :destroy]
 	resources :buildings
 end
end