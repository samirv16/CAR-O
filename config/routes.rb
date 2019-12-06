Rails.application.routes.draw do
  resources :reviews
  resources :car_rentals do
    resources :reviews
  end
  resources :owners
  devise_for :users, :controllers => {registrations: 'registrations' }
  root to: 'application#home'
  
end
