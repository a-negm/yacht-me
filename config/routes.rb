Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :yachts do
    get '/booking_successful', to: "bookings#successful", as: :booking_successful
    resources :bookings, only: %i[new create]
  end

end
