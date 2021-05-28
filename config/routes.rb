Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, :only => [:show]

  resources :yachts do
    resources :bookings, only: %i[new create]

     get '/booking_successful', to: "bookings#successful", as: :booking_successful
  end
     get '/my-bookings', to: 'bookings#index', as: :my_bookings
     delete '/bookings/:id', to: 'bookings#destroy', as: :delete_booking
     get 'bookings/:user_id', to: 'bookings#show', as: :booking
  resources :bookings, only: :update

end
