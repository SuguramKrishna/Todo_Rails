Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root  'todos#index'
  match 'todos/index', :to => 'todos#index', :via => :get 
  match '/create', :to => 'todos#create', :via => :post
  get '/delete/:id' => 'todos#delete', as: :delete
  get '/complete/:id' => 'todos#complete', as: :complete
  # match 'todos/update/:id', to: 'todos#update', via: :get

  resources :todos

end
