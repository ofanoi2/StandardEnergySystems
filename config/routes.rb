Rails.application.routes.draw do
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

  get 'notes/create'

  get 'notes/destroy'

  # get '/buildings', to: 'buildings#show'

  # get 'meters/show'

  get 'meters/create'

  # get 'meters/edit'

  # get 'meters/destroy'

 resources :users
 resources :account_activations, only: [:edit]
 resources :workdays do
 	resources :notes, only: [:create, :edit, :destroy]
 	resources :buildings 
 end
 resources :buildings do
    resources :meters, only: [:show, :new, :create, :edit, :destroy]
  end
 resources :accounts
end