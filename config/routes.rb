Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "root#index"
  get '/about', to: 'about#index'
  #-------------------------------------Sign in routes ---------------------------------------------
  get 'sign_in', to: 'sessions#signIn'
  post 'login', to: 'sessions#login'
 #-------------------------------------- sign up routes --------------------------------------------- 
  get '/sign_up', to: 'registrations#signUp'  
  post '/sign_up' , to:'registrations#create'
  #-------------------------------------- sessions routes --------------------------------------------- 
  get '/sign_in', to: 'login#signIn' , as: :signIn
  delete '/logout', to: 'sessions#logout'
  #----------------------------------------- users routes --------------------------------------------
  get '/userList' , to: 'users#userList'
  get '/user/edit/:id' ,to: 'users#editPage', as: :user_edit_by_id
  patch '/user/edit/:id' ,to: 'users#edit', as: :edit_user
  delete '/user_delete/:id' , to: 'users#delete', as: :user_delete
  # ---------------------------------------- edit password routes ------------------------------------
  get 'edit_password', to: 'passwords#index'
  patch 'edit_password' , to: 'passwords#edit'
  #----------------------------------- friends routes ------------------------------------------------

  resources :friends


  # get 'add_friends' , to: "friends#add_friend"
  # post 'add_friends' , to: "friends#create"
  get '/show_friends' , to: "friends#show_friends"
  # patch 'edit_friend/:id', to: "friends#update",as: :edit_friend
  # get 'edit_friend/:id', to: "friends#edit"
  # delete 'friends/delete/:id', to: "friends#delete", as: :delete_friend

end
