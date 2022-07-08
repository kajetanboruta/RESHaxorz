Rails.application.routes.draw do
  resources :todo_items
  devise_for :users
  mount RailsEventStore::Browser => '/res' if Rails.env.development?
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "todo_items#index"
end
