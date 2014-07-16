Rails.application.routes.draw do
  devise_for :sessions
  devise_for :users, :controllers => { registrations: 'registrations'}
  devise_scope :user do
    get 'login' => "devise/sessions#new"
  end

  root 'site#index'

  get 'site'    => 'site#index'
  get 'users'   => 'users#index'


  post 'url'    => 'url#create'
  get 'url'     => 'url#index'


  get 'events' => 'events#index'
  get 'events/:id' => 'events#show'
  get 'new' => 'events#new'
  post 'create' => 'events#create'

end

