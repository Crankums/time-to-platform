Rails.application.routes.draw do
  resources :workout_appointments
  resources :events
  resources :workouts 
  resources :appointments 
  resources :calendars 
  resources :users

  resources :users do
    resources :workouts
  end

  resources :users do
    resources :appointments
  end


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete 'login' => 'sessions#destroy'
  # root '/profile' ?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
