Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :evaluation_karmas
  resources :evaluations
  resources :students
  resources :professors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
