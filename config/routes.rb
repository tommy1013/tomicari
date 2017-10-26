Rails.application.routes.draw do
  resources :products
  devise_for    :users, :controllers => {
 :registrations => 'users/registrations'
  }
  root          'items#index'
  resources :users do
    member do
      get  'shooting'

      post 'shooting_end'
    end
  end

  resources :items do
    member do
      get  'buy'
      post 'buy_finish'
    end
  end
  resources :trades
  resources :my_pages do
    collection do
      get 'sell_list'
      get 'buy_list'
    end
  end
end
