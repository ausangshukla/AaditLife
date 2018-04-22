Rails.application.routes.draw do
  
  
  
  namespace :admin do
    resources :users
    resources :companies
    resources :fitness_tests
    resources :goals
    resources :medical_histories
    resources :schedules
    resources :targets
    resources :stress_tests
    resources :workouts
    resources :cardio_profiles
    resources :food_logs
    resources :strength_workouts
    root to: "users#index"
  end

  mount_devise_token_auth_for 'User', at: 'auth'
  resources :schedules do
    collection do
      post :generate_schedule
      get :todays_schedule
    end
  end

  resources :strength_workouts
  resources :food_logs
  resources :stress_tests
  resources :workouts
  resources :targets
  resources :fitness_tests
  resources :companies
  resources :medical_histories
  resources :goals
  resources :cardio_profiles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end
