Rails.application.routes.draw do
  resources :products
  devise_for    :users, :controllers => {
 :registrations => 'users/registrations'
  }
  root          'items#index'
  resources :users
  resources :items
  resources :transactions

end
