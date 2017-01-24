Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  root to: 'home#index'

  namespace :admin do
    resources :users, only: [:index, :show, :destroy]
  end
end
