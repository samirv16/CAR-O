Rails.application.routes.draw do

  resources :car_rentals do
    resources :reviews
  end
  get '/car_rentals/:id/best_reviews', to: 'reviews#best_revs', as: 'best_revs'

  resources :reviews

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  root to: 'application#home'


  
end
