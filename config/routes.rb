Rails.application.routes.draw do
  get 'lessons/index'

  get 'lessons/show'

  get 'lessons/new'

  get 'lessons/create'

  get 'lessons/edit'

  get 'lessons/update'

  get 'lessons/destroy'

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

  resources :users
  resources :lessons

end