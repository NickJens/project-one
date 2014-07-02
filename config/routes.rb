Rails.application.routes.draw do
  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'terms'   => 'site#terms'
  get 'users'   => 'site#users'
  get 'events'   => 'site#events'
  get 'profile'   => 'site#profile'


end

