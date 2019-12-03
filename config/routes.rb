Rails.application.routes.draw do
  resources :car_rentals
  resources :owners
  devise_for :users, :controllers => {registrations: 'registrations' }
  root to: 'application#home'
end
