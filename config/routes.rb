Rails.application.routes.draw do
  resources :user_stress_tests
  resources :schedules
  resources :workouts
  resources :targets
  resources :fitness_tests
  resources :companies
  resources :medical_histories
  resources :goals
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
