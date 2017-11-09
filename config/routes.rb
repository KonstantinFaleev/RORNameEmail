Rails.application.routes.draw do

  resources :emails, only: [:index, :create]

  root 'emails#index'
  #root to: redirect(path: '/emails')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
