Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }




  resources :vehicles
  
  get '/vehicle_brands', to: 'vehicles#vehicle_brands'


  devise_scope :user do
    get '/users', to: 'users/registrations#show', as: :user_profile
    delete '/users', to: 'users/registrations#destroy'
    post '/verify', to: 'authentication#verify'
    post '/phone', to: 'authentication#phone'
    get '/email_check', to:'users/registrations#email_check'
  end
  put '/user_images', to: 'user_images#update'
  get '/user_images', to: 'user_images#show'

  resources :publishes do
    resources :passengers, only: [:create, :destroy]
  end


  post 'publishes/:id/cancel_publish', to: 'publishes#cancel_publish'
  post 'publishes/:id/complete_publish', to: 'publishes#complete_publish'
  get '/publishes/:id', to: 'publishes#show', as: 'show_publish'

  
  get '/search', to: 'searches#search'
  
 


  resources :account_activations, only: [:edit,:create]


  post '/book_publish', to: 'passengers#book_publish'
  post '/cancel_booking', to: 'passengers#cancel_booking'
  patch '/passengers/:id/complete_ride', to: 'passengers#complete_ride'


  post '/chats', to: 'chats#create'


  



  get 'publish/sort/:order_by', to: 'publishes#sort_publish'


# routes for ratings
  resources :ratings, only: [:create]
  get '/givenRating', to: 'ratings#givenRating'
  get '/recievedRating', to: 'ratings#recievedRating'
 
  
end
