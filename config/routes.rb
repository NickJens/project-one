Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'login' => "devise/sessions#new"
  end

  root 'site#index'

  get 'site'    => 'site#index'
  get 'users'   => 'users#index'
  get 'events'  => 'events#index'

  post 'url'    => 'url#create'
  get 'url'     => 'url#index'

end

