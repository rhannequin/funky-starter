Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  root to: 'home#index'

  namespace :admin do
    get '', to: 'home#index'
    resources :users, only: %i[index show destroy]
    resources :events, only: :index
    resources :visits, only: %i[index show]
  end
end
