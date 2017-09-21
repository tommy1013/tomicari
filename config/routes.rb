Rails.application.routes.draw do
  resources :products
  devise_for    :users, :controllers => {
 :registrations => 'users/registrations'
  }
  root          'items#index'
  resources :users
  resources :items
  resources :trades
  resources :my_pages do
    collection do
      get 'sell_list'
      get 'buy_list'
    end
  end
end
