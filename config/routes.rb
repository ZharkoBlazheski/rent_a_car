Rails.application.routes.draw do
  get 'static/home'
  get 'static/about'
  get 'static/contact'
  post '/create_contact', to: 'static#create_contact'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :cars do
    get 'rented_cars', on: :collection
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "cars#index"
end
