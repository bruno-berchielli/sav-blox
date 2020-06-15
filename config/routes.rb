Rails.application.routes.draw do
  resources :classrooms
  resources :users, except: [:new]
  root to: 'main#index'
  get 'signup', to: 'users#new'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
