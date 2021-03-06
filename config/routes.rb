Vinco::Application.routes.draw do
  devise_for :users
  get "welcome/index" => 'welcome#index'
  get "welcome/about" => 'welcome#about'
  get "welcome/info" => 'welcome#info'
  get "dashboard/player" => 'dashboards#player'
  get "dashboard/coach" => 'dashboards#coach'
  get "dashboard/admin" => 'dashboards#admin'
  resources :players
  resources :users, :only => [:edit, :update]
  resources :workouts 
  resources :drills
  resources :workout_drills
  resources :teams, :only => [:new, :create, :show, :edit, :update]
   root to: 'welcome#index'
end
