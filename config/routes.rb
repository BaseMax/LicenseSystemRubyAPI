Rails.application.routes.draw do
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#index'
  # get 'new', to: 'homes#new'
  get '/new' => 'homes#new', :defaults => { :name => 'Max' }
  get '/new/:name' => 'homes#new'
end
