Rails.application.routes.draw do

  get    'record_attendance' , to: 'lessons#record_attendance'
  get    'get_users_attending', to: 'attendance#get_users_attending'

  get     'lessons/index'
  get     'lessons/show'
  get     'lessons/new'
  post    'lessons/create'
  post    'lessons/edit'
  post    'lessons/update'
  delete  'lessons/destroy'

  get     'sessions/new'

  root    'static_pages#home'
  get     'help'    => 'static_pages#help'
  get     'about'   => 'static_pages#about'
  get     'contact' => 'static_pages#contact'
  get     'signup'  => 'users#new'
  get     'login'   => 'sessions#new'
  post    'login'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'
  get     'index' => 'lessons#index'
  get     'index' => 'classrooms#index'

  get     'attendance_index' => 'attendance#index'

  get     'user_attending_profile', to: 'users#show'

  resources :users
  resources :lessons
  resources :attendance
  resources :account_activations, only: [:edit]

end