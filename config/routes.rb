Rails.application.routes.draw do

  get 'classrooms/index'
  get 'classrooms/show'
  get 'classrooms/new'
  post 'classrooms/create'
  post 'classrooms/edit'
  post 'classrooms/update'
  delete 'classrooms/destroy'

  get 'lessons/index'
  get 'lessons/show'
  get 'lessons/new'
  post 'lessons/create'
  post 'lessons/edit'
  post 'lessons/update'
  delete 'lessons/destroy'

  get 'sessions/new'

  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'index' => 'lessons#index'
  get 'index' => 'classrooms#index'

  resources :users
  resources :lessons
  resources :classrooms

end