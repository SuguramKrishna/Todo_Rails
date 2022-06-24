Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #match 'todos', :to => 'todos#index', :via => :get
  get 'todos', to: "todos#index"
end
