Rails.application.routes.draw do

  resources :car_rentals do
    resources :reviews
  end

  resources :reviews

  resources :owners

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  root to: 'application#home'

  
end
