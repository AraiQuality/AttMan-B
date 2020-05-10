Rails.application.routes.draw do
  root 'static_pages#top'
  get  'signup', to: 'users#new'
  
  #login function
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'

  resources :users
end
