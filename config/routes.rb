Rails.application.routes.draw do
  root 'site#index'

  get 'site'    => 'site#index'
  get 'users'   => 'users#index'
  get 'events'  => 'events#index'
  get 'profile' => 'profile#index'
  get 'login'   => 'login#index'

  post 'url'    => 'url#create'
  get 'url'     => 'url#index'

end

