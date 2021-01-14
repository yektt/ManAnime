Rails.application.routes.draw do

  root to: 'home#index'

  get 'users/new'

  get 'users/show'

  get 'users/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
