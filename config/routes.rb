Rails.application.routes.draw do
  devise_for :users
  root to: 'menters#index'
  resources :menters, except: :destroy
end
