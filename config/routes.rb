Rails.application.routes.draw do

  resources :files, only: [:index, :show]
  # get 'files/index'
  # get 'files/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/my/data', to: 'home#info'
end
