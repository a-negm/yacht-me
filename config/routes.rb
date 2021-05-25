Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  resources :yachts
=======
  resources :yachts do
    resources :bookings, only: %i[new create]

     get '/booking_successful', to: "bookings#successful", as: :booking_successful
  end
     get '/my-bookings', to: 'bookings#index', as: :my_bookings


>>>>>>> bb57cfb3f02abc485bcb6de4dfcc6f73d8c59c84
end
