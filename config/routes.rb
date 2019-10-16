Rails.application.routes.draw do
  resources :workouts 
  resources :appointments 
  resources :calendars 
  resources :users # should the profile be root?
  get '/login', to: 'sessions#new'
  # root '/profile' ?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
