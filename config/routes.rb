Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :companies
    resources :fitness_tests
    resources :goals
    resources :medical_histories
    resources :schedules
    resources :targets
    resources :user_stress_tests
    resources :workouts

    root to: "users#index"
  end

  mount_devise_token_auth_for 'User', at: 'auth'
  resources :user_stress_tests
  resources :schedules
  resources :workouts
  resources :targets
  resources :fitness_tests
  resources :companies
  resources :medical_histories
  resources :goals
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
