Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "root#index"
  get '/sign_up', to: 'registrations#signUp'  
  post '/sign_up' , to:'registrations#create'
  get '/about', to: 'about#index'
  get '/sign_in', to: 'login#signIn' , as: :signIn
  delete '/logout', to: 'sessions#logout'
end
