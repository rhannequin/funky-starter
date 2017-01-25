Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  root to: 'home#index'

  namespace :admin do
    get '', to: 'home#index'
    resources :users, only: [:index, :show, :destroy]
  end
end
